package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N, K := ReadInt(), ReadInt()
	h := ReadInts(N)
	sort.Ints(h)
	ans := 1 << 62
	for i := 0; i < N-(K-1); i++ {
		ans = Min(ans, h[i+K-1]-h[i])
	}
	fmt.Println(ans)
}

func Min(a, b int) int {
	if a > b {
		return b
	}
	return a
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
