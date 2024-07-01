package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	X, N := ReadInt(), ReadInt()
	p := ReadInts(N)
	m := make(map[int]bool)
	for _, pi := range p {
		m[pi] = true
	}
	for i := 0; true; i++ {
		if !m[X-i] {
			fmt.Println(X - i)
			return
		}
		if !m[X+i] {
			fmt.Println(X + i)
			return
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
