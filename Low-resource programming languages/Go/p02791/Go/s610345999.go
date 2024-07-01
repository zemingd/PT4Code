package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	P := ReadInts(N)
	ans := 0
	min := 1 << 62
	for i := 0; i < N; i++ {
		if min > P[i] {
			ans++
			min = P[i]
		}
	}
	fmt.Println(ans)
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
