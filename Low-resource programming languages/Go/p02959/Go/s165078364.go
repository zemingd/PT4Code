package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

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
		if A[i] <= temp {
			temp = A[i]
			A[i] = 0
		} else {
			A[i] = A[i] - temp
		}

		if A[i] <= B[i] {
			ans += A[i] + temp
			temp = B[i] - A[i]
		} else {
			ans += B[i]
			temp = 0
		}
	}

	if temp != 0 {
		if temp <= A[N] {
			ans += temp
		} else {
			ans += A[N]
		}
	}

	fmt.Println(ans)
}
