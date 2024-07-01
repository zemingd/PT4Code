package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	W, H, x, y := ReadInt(), ReadInt(), ReadInt(), ReadInt()
	s := float64(H*W) / 2
	if 2*x == W && 2*y == H {
		fmt.Println(s, 1)
	} else {
		fmt.Println(s, 0)
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
