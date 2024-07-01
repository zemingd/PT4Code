package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	as := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		as[i] = nextInt()
	}
	bs := make([]int, n)
	for i := 0; i < n; i++ {
		bs[i] = nextInt()
	}

	//fmt.Println(solve(n, as, bs))
	fmt.Println(answer(n, as, bs))
}

func answer(N int, A []int, B []int) int {
	c := 0
	for i := range B {
		m := min(A[i], B[i])
		A[i] -= m
		B[i] -= m
		c += m

		m = min(A[i+1], B[i])
		A[i+1] -= m
		B[i] -= m
		c += m
	}

	return c
}

func min(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}