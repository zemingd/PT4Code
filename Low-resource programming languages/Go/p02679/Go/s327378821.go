package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)

type vector struct {
	X int
	Y int
}

type cont struct {
	First  int
	Second int
}

const mod = 1000000007

func main() {
	sc := newScanner(os.Stdin)
	_ = sc
	N := sc.i()
	zero := 0

	container := map[vector]cont{}
	for i := 0; i < N; i++ {
		a := sc.i()
		b := sc.i()
		if a == 0 && b == 0 {
			zero = zero + 1
			continue
		}
		//gcd := int(z.GCD(bigZero1, bigZero2, bigA, bigB).Int64())
		g := Gcd(a, b)
		a = a / g
		b = b / g

		// 180
		if b < 0 {
			a, b = -a, -b
		}
		
		if b == 0 && a < 0 {
			a = -a
		}
		rec90 := false
		if a <= 0 {
			rec90 = true
			a, b = b, -a
		}
		v := vector{a, b}
		con := container[v]
		if rec90 {
			con.First = con.First + 1
		} else {
			con.Second = con.Second + 1
		}
		container[v] = con
	}

	r := 1
	for _, v := range container {
		r = r * ((Pow(2, v.First) - 1) + (Pow(2, v.Second) - 1) + 1) % mod
	}
	r = r + zero - 1
	r = r % mod

	fmt.Println(r)
}

func Pow(x, y int) int {
	r := 1
	for i := 0; i < y; i++ {
		r = r * x
	}
	return r
}

func Gcd(a, b int) int {
	if a < b {
		return Gcd(b, a)
	}
	for b != 0 {
		a, b = b, a%b
	}
	return a
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
