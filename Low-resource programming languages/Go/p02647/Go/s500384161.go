package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)
var out = bufio.NewWriter(os.Stdout)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func arrayEqual(A []int, B []int, N int) bool {
	for i := 0; i < N; i++ {
		if A[i] != B[i] {
			return false
		}
	}
	return true
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func main() {
	buf := make([]byte, 1024*1024)
	sc.Buffer(buf, bufio.MaxScanTokenSize)
	sc.Split(bufio.ScanWords)
	defer out.Flush()

	N, K := nextInt(), nextInt()
	A := make([]int, N+1)
	for i := 0; i < N; i++ {
		A[i] = nextInt()
	}

	for k := 0; k < K; k++ {
		B := make([]int, N+1)

		for i := 0; i < N; i++ {
			B[max(i-A[i], 0)] += 1
			B[min(i+A[i]+1, N)] -= 1
		}

		for i := 0; i < N; i++ {
			B[i+1] += B[i]
		}

		if arrayEqual(A, B, N) {
			break
		}

		for i := 0; i < N; i++ {
			A[i] = B[i]
		}
		A = B
	}

	for i := 0; i < N; i++ {
		fmt.Fprintf(out, "%d ", A[i])
	}
}
