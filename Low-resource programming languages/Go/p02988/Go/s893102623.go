package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	n := ReadInt()
	p := ReadInts(n)
	c := 0
	for i := 1; i < n-1; i++ {
		if p[i-1] > p[i] && p[i] >= p[i+1] {
			c++
		} else if p[i-1] <= p[i] && p[i] < p[i+1] {
			c++
		}
	}
	fmt.Println(c)
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
