package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	a := ReadInts(N)
	v := 0
	for _, ai := range a {
		if ai == v+1 {
			v++
		}
	}
	if v == 0 {
		fmt.Println(-1)
	} else {
		fmt.Println(N - v)
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
