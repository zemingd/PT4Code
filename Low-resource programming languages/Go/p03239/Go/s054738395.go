package main

import (
	"bufio"
	"errors"
	"fmt"
	"io"
	"io/ioutil"
	"math"
	"os"
	"strconv"
	"strings"
)

var (
	// ErrLineNotFound -
	ErrLineNotFound = errors.New("lines: line not found")
)

type onError int

const (
	onErrorPanic onError = iota
	onErrorError
)

// Lines represents multi line.
type Lines struct {
	r       io.Reader
	w       io.Writer
	onError onError

	store []string
}

// NewLines create lines from provided input reader.
func New(r io.Reader) *Lines {
	lines, err := newLines(r, ioutil.Discard, onErrorPanic)
	if err != nil {
		panic(err)
	}
	return lines
}

// Line represents single line.
type Line struct {
	store string
	field int
}

// Line return given n line.
func (ls *Lines) Line(n int) *Line {
	line, err := ls.line(n)
	if err != nil {
		panic(err)
	}
	return line
}

func (ls *Lines) line(n int) (*Line, error) {
	if n >= len(ls.store) {
		return nil, ErrLineNotFound
	}
	return &Line{store: ls.store[n]}, nil
}

func (l *Line) Ints() []int {
	ints, err := l.ints()
	if err != nil {
		panic(err)
	}
	return ints
}

func (l *Line) ints() ([]int, error) {
	var ints []int
	fields := strings.Fields(l.store)
	for _, s := range fields {
		i, err := strconv.Atoi(s)
		if err != nil {
			return nil, err
		}
		ints = append(ints, i)
	}
	return ints, nil
}

// Field specify current field scope.
func (l *Line) Field(n int) *Line {
	clone := l.clone()
	clone.field = n
	return clone
}

func (l *Line) Int() int {
	ints, err := l.ints()
	if err != nil {
		panic(err)
	}
	return ints[l.field]
}

func newLines(r io.Reader, w io.Writer, onError onError) (*Lines, error) {
	lines := &Lines{
		r:       r,
		w:       w,
		onError: onErrorError,
	}
	return lines, lines.init()
}

func (ls *Lines) init() error {
	s := bufio.NewScanner(ls.r)
	s.Buffer([]byte{}, math.MaxInt64)
	for s.Scan() {
		ls.store = append(ls.store, s.Text())
	}
	return s.Err()
}

func (l *Line) clone() *Line {
	clone := *l
	return &clone
}

type Route struct {
	Cost int
	Time int
}

func main() {
	lines := New(os.Stdin)

	routes := generateRoutes(lines)
	limitTime := lines.Line(0).Field(1).Int()

	r, found := findRoute(limitTime, routes)
	if !found {
		fmt.Println("TLE")
		return
	}
	fmt.Println(r.Cost)
}

func findRoute(limit int, routes []Route) (Route, bool) {
	var best Route
	var found bool
	var minCost int = 1001

	for _, r := range routes {
		r = r
		if r.Time > limit {
			continue
		}
		if r.Cost < minCost {
			found = true
			best = r
			minCost = r.Cost
		}
	}
	return best, found
}

func generateRoutes(lines *Lines) []Route {
	n := lines.Line(0).Ints()[0]

	var routes []Route
	for i := 1; i <= n; i++ {
		l := lines.Line(i)
		routes = append(routes, Route{
			Cost: l.Field(0).Int(),
			Time: l.Field(1).Int(),
		})
	}
	return routes
}
