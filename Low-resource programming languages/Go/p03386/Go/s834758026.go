package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A, B, K := ReadInt(), ReadInt(), ReadInt()
	for i := A; i < B+1; i++ {
		if i < A+K || B+1-K <= i {
			fmt.Println(i)
		}
	}
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
