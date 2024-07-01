package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, K := ReadInt(), ReadInt()
	A := ReadInts(N)

	for k := 0; k < K; k++ {
		next := make([]int, N)
		for i := 0; i < N; i++ {
			l := i - A[i]
			r := i + A[i] + 1
			if l < 0 {
				l = 0
			}
			next[l]++
			if r <= N-1 {
				next[r]--
			}
		}
		for i := 0; i < N-1; i++ {
			next[i+1] += next[i]
		}
		A = next
		c := 0
		for i := 0; i < N; i++ {
			if A[i] == N {
				c++
			}
		}
		if c == N {
			break
		}
	}
	for i := 0; i < N; i++ {
		fmt.Printf("%d ", A[i])
	}
	fmt.Println()
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
