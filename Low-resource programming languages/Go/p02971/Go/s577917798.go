package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	A := ReadInts(N)
	left := make([]int, N)
	left[0] = -1
	for i := 1; i < N; i++ {
		left[i] = Max(left[i-1], A[i-1])
	}
	right := make([]int, N)
	right[N-1] = -1
	for i := N - 2; i >= 0; i-- {
		right[i] = Max(right[i+1], A[i+1])
	}
	for i := 0; i < N; i++ {
		fmt.Println(Max(left[i], right[i]))
	}
}

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
