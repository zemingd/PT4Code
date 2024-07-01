package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, M := ReadInt(), ReadInt()
	v := make([]int, N)
	for i := 0; i < N; i++ {
		v[i] = -1
	}
	for i := 0; i < M; i++ {
		s, c := ReadInt()-1, ReadInt()
		if v[s] != -1 && v[s] != c {
			fmt.Println(-1)
			return
		}
		v[s] = c
	}

	if N > 1 && v[0] == 0 {
		fmt.Println(-1)
		return
	}

	for i := 0; i < N; i++ {
		if v[i] >= 0 {
			fmt.Print(v[i])
			continue
		}
		if i == 0 && N > 1 {
			fmt.Print(1)
		} else {
			fmt.Print(0)
		}
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
