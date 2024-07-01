package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

const (
	initialBufSize = 10000
	maxBufSize     = 10000000
)

var (
	sc = func() *bufio.Scanner {
		sc := bufio.NewScanner(os.Stdin)
		buf := make([]byte, initialBufSize)
		sc.Buffer(buf, maxBufSize)
		sc.Split(bufio.ScanWords)
		return sc
	}()
)

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func main() {
	a, b, m := nextInt(), nextInt(), nextInt()
	as := make([]int, a)
	ac := make([]int, a)
	bs := make([]int, b)
	bc := make([]int, b)
	for i := 0; i < a; i++ {
		as[i] = nextInt()
		ac[i] = as[i]
	}
	for i := 0; i < b; i++ {
		bs[i] = nextInt()
		bc[i] = bs[i]
	}
	sort.Ints(as)
	sort.Ints(bs)
	min := as[0] + bs[0]
	for i := 0; i < m; i++ {
		x, y, c := nextInt(), nextInt(), nextInt()
		disc := ac[x-1] + bc[y-1] - c
		if disc < min {
			min = disc
		}
	}
	fmt.Println(min)
}
