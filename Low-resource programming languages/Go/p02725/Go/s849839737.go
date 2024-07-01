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
	// Code for C - Traveling Salesman around Lake
	var K, N int
	fmt.Scanf("%d %d", &K, &N)

	sc.Split(bufio.ScanWords)
	var max int = 0
	A := make([]int, N)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	for i := 0; i < N-1; i++ {
		if max < A[i+1]-A[i] {
			max = A[i+1] - A[i]
		}
	}
	if max < (K-A[N-1])+A[0] {
		max = (K - A[N-1]) + A[0]
	}

	fmt.Println(K - max)
}
