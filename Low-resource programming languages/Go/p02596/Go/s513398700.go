package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	K := ReadInt()
	c := 1
	prev := 7 % K
	for prev != 0 {
		c++
		next := (10*prev + 7) % K
		if prev == next {
			fmt.Println(-1)
			return
		}
		prev = next
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
