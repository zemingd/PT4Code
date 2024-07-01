package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	nextReader = newScanner()
	N := nextInt()
	M := nextInt()
	Hs := nextInts(N)
	Flg := make([]int, N)
	for m := 0; m < M; m++ {
		a := nextInt()
		b := nextInt()
		if Hs[a-1] < Hs[b-1] {
			Flg[a-1] = 1
		} else if Hs[a-1] > Hs[b-1] {
			Flg[b-1] = 1
		}
		//    else {
		//		Flg[a-1] = 1
		//		Flg[b-1] = 1
		//	}
	}
	ans := 0
	for _, v := range Flg {
		if v > 0 {
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
