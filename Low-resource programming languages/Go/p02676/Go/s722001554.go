package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

var (
	test = "7\nnikoandsolstice"
	sc   = NewScanner(os.Stdin)
)

func main() {
	lines := sc.ReadLines(2)
	K, S := lines[0].Int(), lines[1].String()

	if len(S) <= K {
		fmt.Println(S)
	} else {
		fmt.Println(S[:K], "...")
	}
}

type Scanner struct {
	scanner *bufio.Scanner
}

func NewScanner(r io.Reader) *Scanner {
	return &Scanner{scanner: bufio.NewScanner(r)}
}

func (sc *Scanner) ReadLine() Value {
	if sc.scanner.Scan() {
		return Value(sc.scanner.Text())
	}
	panic(sc.scanner.Err())
}

func (sc *Scanner) ReadLines(n int) Values {
	a := make(Values, n)
	for i := range a {
		a[i] = sc.ReadLine()
	}
	return a
}

type Value string

func (v Value) String() string {
	return string(v)
}

func (v Value) Strings() []string {
	return strings.Split(string(v), " ")
}

func (v Value) Int() int {
	n, err := strconv.Atoi(v.String())
	if err != nil {
		panic(err)
	}
	return n
}

func (v Value) Ints() []int {
	strings := v.Strings()
	ints := make([]int, len(strings))

	for i, s := range strings {
		n, err := strconv.Atoi(s)
		if err != nil {
			panic(err)
		}
		ints[i] = n
	}
	return ints
}

func (v Value) Float64() float64 {
	f, err := strconv.ParseFloat(v.String(), 64)
	if err != nil {
		panic(err)
	}
	return f
}

func (v Value) Float64s() []float64 {
	strings := v.Strings()
	float64s := make([]float64, len(strings))

	for i, s := range strings {
		f, err := strconv.ParseFloat(s, 64)
		if err != nil {
			panic(err)
		}
		float64s[i] = f
	}
	return float64s
}

type Values []Value

func (v Values) Strings() [][]string {
	a := make([][]string, len(v))
	for i, value := range v {
		a[i] = value.Strings()
	}
	return a
}

func (v Values) Ints() [][]int {
	a := make([][]int, len(v))
	for i, value := range v {
		a[i] = value.Ints()
	}
	return a
}

func (v Values) Float64s() [][]float64 {
	a := make([][]float64, len(v))
	for i, value := range v {
		a[i] = value.Float64s()
	}
	return a
}
