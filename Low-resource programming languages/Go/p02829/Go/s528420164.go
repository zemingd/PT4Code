package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A, B := ReadInt(), ReadInt()
	v := 1 ^ 2 ^ 3 ^ A ^ B
	fmt.Println(v)
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
