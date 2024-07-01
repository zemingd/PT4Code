package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
	"strings"
)

func main() {
	sc := NewScanner(os.Stdin)
/*	sc := NewScanner(strings.NewReader(`40
ferelibenterhominesidquodvoluntcredunt`))*/

	lines := sc.ReadLines(2)
	K, S := lines[0].Int(), lines[1].String()

	for i, r := range S {
		if i < K {
			fmt.Print(string(r))
		} else {
			fmt.Print(".")
		}
	}
	fmt.Println()
}

type Scanner struct {
	*bufio.Scanner
}

func NewScanner(r io.Reader) *Scanner {
	return &Scanner{
		bufio.NewScanner(r),
	}
}

func (sc *Scanner) ReadLine() Value {
	if sc.Scan() {
		return Value(sc.Text())
	}
	panic("read line error")
}

func (sc *Scanner) ReadLines(n int) Values {
	values := make(Values, n)
	for i := range values {
		values[i] = sc.ReadLine()
	}
	return values
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

func (v Value) Int64() int64 {
	n, err := strconv.ParseInt(v.String(), 10, 64)
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

func (v Value) Int64s() []int64 {
	strings := v.Strings()
	ints := make([]int64, len(strings))
	for i, s := range strings {
		n, err := strconv.ParseInt(s, 10, 64)
		if err != nil {
			panic(err)
		}
		ints[i] = n
	}
	return ints
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
	strings := make([][]string, len(v))
	for i, value := range v {
		strings[i] = value.Strings()
	}
	return strings
}

func (v Values) Ints() [][]int {
	ints := make([][]int, len(v))
	for i, value := range v {
		ints[i] = value.Ints()
	}
	return ints
}

func (v Values) Int64s() [][]int64 {
	int64s := make([][]int64, len(v))
	for i, value := range v {
		int64s[i] = value.Int64s()
	}
	return int64s
}

func (v Values) Float64s() [][]float64 {
	float64s := make([][]float64, len(v))
	for i, value := range v {
		float64s[i] = value.Float64s()
	}
	return float64s
}
