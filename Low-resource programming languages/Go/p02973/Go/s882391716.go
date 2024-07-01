package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N := ReadInt()
	A := ReadInts(N)
	b := make([]int, N)
	for i := 0; i < N; i++ {
		b[i] = -1
	}
	for _, ai := range A {
		l, r := -1, N
		for r-l > 1 {
			c := (l + r) / 2
			if ai > b[c] {
				r = c
			} else {
				l = c
			}
		}
		b[r] = ai
	}
	fmt.Println(sort.Search(N, func(i int) bool { return b[i] == -1 }))
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
