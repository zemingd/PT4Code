package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	K, N := ReadInt(), ReadInt()
	A := ReadInts(N)
	ans := K
	for i := 0; i < N; i++ {
		j := (i + N - 1) % N
		if A[j] > A[i] {
			ans = Min(ans, A[j]-A[i])
		} else {
			ans = Min(ans, K-A[i]+A[j])
		}
	}
	fmt.Println(ans)
}

func Min(xs ...int) int {
	min := xs[0]
	for _, x := range xs[1:] {
		if min > x {
			min = x
		}
	}
	return min
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
