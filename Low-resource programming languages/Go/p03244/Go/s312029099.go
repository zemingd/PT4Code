package main

import (
	"bufio"
	"bytes"
	"errors"
	"fmt"
	"io"
	"io/ioutil"
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
	for s.Scan() {
		ls.store = append(ls.store, s.Text())
	}
	return s.Err()
}

func (l *Line) clone() *Line {
	clone := *l
	return &clone
}

func main() {
	lines := New(os.Stdin)
	ns := lines.Line(1).Ints()

	evenMax := maxNum(ns, true)
	oddMax := maxNum(ns, false)

	count := do(ns, evenMax, oddMax)
	if evenMax == oddMax {
		count = len(ns) / 2
	}
	fmt.Println(count)
}

func maxNum(ns []int, even bool) int {
	m := map[int]int{}

	var i int
	if even {
		i = 1
	} else {
		i = 0
	}
	for {
		if i >= len(ns) {
			break
		}
		m[ns[i]]++
		i += 2
	}
	var maxCount int
	var maxNum int
	for num, count := range m {
		if count > maxCount {
			maxCount = count
			maxNum = num
		}
	}
	return maxNum
}

func do(ns []int, _even, _odd int) int {
	sns := toS(ns)
	// fmt.Println(ns)
	even := strconv.Itoa(_even)
	odd := strconv.Itoa(_odd)

	fields := strings.Fields(sns)
	var count int

	var i int
	for _, str := range fields {
		// fmt.Printf("%s[%d] = %s\n", ns, i, str)
		if i%2 == 0 {
			if str != odd {
				count++
			}
		} else {
			if str != even {
				count++
			}
		}
		i++
	}

	return count
}

func toS(ns []int) string {
	var b bytes.Buffer
	for _, n := range ns {
		b.WriteString(strconv.Itoa(n) + " ")
	}
	return strings.TrimSpace(b.String())
}
