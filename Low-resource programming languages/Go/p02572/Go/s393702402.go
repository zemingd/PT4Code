package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
	"os"
	"strconv"
	"strings"
)

func Run(r io.Reader, w io.Writer) {
	sc := NewScanner(r)

	_ = sc.ReadLine().Int()
	A := sc.ReadLine().Ints()

	n := 0
	for i := 0; i < len(A); i++ {
		for j := i + 1; j < len(A); j++ {
			n += A[i] * A[j]
		}
	}

	fmt.Fprintln(w, n%int(math.Pow(10, 9)+7))
}

func main() {
	Run(os.Stdin, os.Stdout)
}

type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner(r io.Reader) *Scanner {
	return &Scanner{sc: bufio.NewScanner(r)}
}

func (s *Scanner) ReadLine() Value {
	if s.sc.Scan() {
		return Value(s.sc.Text())
	}
	panic("scan error")
}

func (s *Scanner) ReadLines(n int) Values {
	var a Values
	for i := 0; i < n; i++ {
		a = append(a, s.ReadLine())
	}
	return a
}

type Value string

func (v Value) String() string {
	return string(v)
}

func (v Value) Int() int {
	n, err := strconv.Atoi(v.String())
	if err != nil {
		panic(err)
	}
	return n
}

func (v Value) Float64() float64 {
	f, err := strconv.ParseFloat(v.String(), 64)
	if err != nil {
		panic(err)
	}
	return f
}

func (v Value) Strings() []string {
	return strings.Split(v.String(), " ")
}

func (v Value) Ints() []int {
	var a []int
	for _, s := range v.Strings() {
		n, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		a = append(a, n)
	}
	return a
}

func (v Value) Float64s() []float64 {
	var a []float64
	for _, s := range v.Strings() {
		f, err := strconv.ParseFloat(s, 64)
		if err != nil {
			panic(err)
		}
		a = append(a, f)
	}
	return a
}

func (v Value) Runes() []rune {
	return []rune(v.String())
}

type Values []Value

func (v Values) Strings() [][]string {
	var a [][]string
	for _, value := range v {
		a = append(a, value.Strings())
	}
	return a
}

func (v Values) Ints() [][]int {
	var a [][]int
	for _, value := range v {
		a = append(a, value.Ints())
	}
	return a
}

func (v Values) Float64s() [][]float64 {
	var a [][]float64
	for _, value := range v {
		a = append(a, value.Float64s())
	}
	return a
}

func (v Values) Runes() [][]rune {
	var a [][]rune
	for _, value := range v {
		a = append(a, value.Runes())
	}
	return a
}
