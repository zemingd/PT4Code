package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func min(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m > v {
			m = v
		}
	}
	return m
}

func max(a ...int) int {
	m := a[0]
	for i, v := range a {
		if i == 0 {
			continue
		}
		if m < v {
			m = v
		}
	}
	return m
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var sc = bufio.NewScanner(os.Stdin)

func main() {
	// Code for C - City Savers
	var N int
	fmt.Scanf("%d", &N)

	sc.Split(bufio.ScanWords)
	A := make([]int, N+1)
	B := make([]int, N)

	for i := 0; i < N+1; i++ {
		A[i] = nextInt()
	}

	for i := 0; i < N; i++ {
		B[i] = nextInt()
	}

	var ans int
	var temp int = 0
	for i := 0; i < N; i++ {
		if A[i]-temp >= 0 {
			A[i] = A[i] - temp
			ans += temp
		} else {
			ans += A[i]
			A[i] = 0
		}
		ans += min(A[i], B[i])
		temp = max(B[i]-A[i], 0)
	}

	if temp != 0 {
		if A[N]-temp >= 0 {
			ans += temp
		} else {
			ans += A[N]
		}
	}

	fmt.Println(ans)
}
