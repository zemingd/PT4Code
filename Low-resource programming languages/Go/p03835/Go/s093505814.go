package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	K, S := ReadInt(), ReadInt()
	c := 0
	for x := 0; x <= K; x++ {
		for y := 0; y <= K; y++ {
			z := S - x - y
			if 0 <= z && z <= K {
				c++
			}
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
