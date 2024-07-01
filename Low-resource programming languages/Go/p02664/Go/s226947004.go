// +build ignore
package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

func solve(sc *scanner, wr *bufio.Writer) int {
	T := sc.s()

	if len(T) == 1 && T[0] == '?' {
		fmt.Println(string('D'))
		return 0
	}

	R := []byte{}

	var prev byte
	for i := 0; i < len(T); i++ {
		switch T[i] {
		case 'P':
			if prev == '?' {
				R[i-1] = 'D'
			}
		case 'D':
			if prev == '?' {
				R[i-1] = 'P'
			}
		case '?':
			if prev == 'P' {
				R = append(R, byte('D'))
				prev = 'D'
				continue
			}
			if prev == '?' {
				R[i-1] = 'P'
				R = append(R, byte('D'))
				prev = 'D'
				continue
			}
		}
		R = append(R, byte(T[i]))
		prev = T[i]
	}

	fmt.Println(string(R))
	return 0
}

func main() {
	sc := newScanner(os.Stdin)
	wr := bufio.NewWriter(os.Stdout)
	ret := solve(sc, wr)
	wr.Flush()
	os.Exit(ret)
}

// I/O
type scanner struct {
	sc *bufio.Scanner
}

func newScanner(input io.Reader) *scanner {
	sc := bufio.NewScanner(input)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &scanner{sc}
}

func (s *scanner) s() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *scanner) i() int {
	i, e := strconv.Atoi(s.s())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *scanner) f() float64 {
	f, e := strconv.ParseFloat(s.s(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func (s *scanner) bs() []byte {
	return []byte(s.s())
}

func (s *scanner) is(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.i()
	}
	return res
}

func (s *scanner) fs(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.f()
	}
	return res
}
