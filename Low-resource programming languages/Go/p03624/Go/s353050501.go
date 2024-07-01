package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := ReadString()
	m := make(map[byte]bool)
	for _, c := range []byte(S) {
		m[c] = true
	}
	for c := byte('a'); c <= 'z'; c++ {
		if !m[c] {
			fmt.Printf("%c\n", c)
			return
		}
	}
	fmt.Println("None")
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
