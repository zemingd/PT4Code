package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Row []string

type Data []Row

func main() {
	nextReader = newScanner()
	N := nextInt()
	K := nextInt()
	f := make([]int, N)
	for k := 0; k < K; k++ {
		d := nextInt()
		for e := 0; e < d; e++ {
			m := nextInt()
			f[m-1] += 1
		}
	}
	ans := 0
	for _, n := range f {
		if n == 0 {
			ans += 1
		}
	}
	fmt.Printf("%d", ans)
}

var nextReader func() string

func newScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	// r.Split(bufio.ScanLines)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func nextStrings() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}
func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}
func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
