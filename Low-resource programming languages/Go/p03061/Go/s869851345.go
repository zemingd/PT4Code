package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
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

func gcd(x, y int) int {
	r := x % y
	for r > 0 {
		x, y = y, r
		r = x % y
	}

	return y
}

func gcdSlice(x []int) int {
	if len(x) == 0 {
		return -1
	}

	gc := x[0]
	for i := 1; i < len(x); i++ {
		gc = gcd(gc, x[i])
	}

	return gc
}

func main() {
	sc.Split(bufio.ScanWords)

	N := nextInt()
	var A []int
	for i := 0; i < N; i++ {
		A = append(A, nextInt())
	}

	max := 0
	for i := 0; i < N; i++ {
		l, r := gcdSlice(A[:i]), gcdSlice(A[i+1:])
		g := 0
		switch {
		case l == -1: g = r
		case r == -1: g = l
		default: g = gcd(gcdSlice(A[:i]), gcdSlice(A[i+1:]))
		}
		if max < g {
			max = g
 		}
	}

	fmt.Println(max)
}
