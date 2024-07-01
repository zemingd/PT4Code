package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	A := ReadInts(N + 1)
	B := ReadInts(N)

	ans := 0
	for i := 0; i < N; i++ {
		c := Min(A[i], B[i])
		ans += c
		A[i] -= c
		B[i] -= c
		c = Min(A[i+1], B[i])
		ans += c
		A[i+1] -= c
		B[i] -= c
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
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
