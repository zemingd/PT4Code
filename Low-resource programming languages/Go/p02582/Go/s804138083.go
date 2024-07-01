package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := ReadString()
	r := 0
	for i := 0; i < 3; i++ {
		if S[i] == 'R' {
			r++
		}
	}
	if r == 3 {
		fmt.Println(3)
		return
	}
	if r == 2 {
		if S[1] == 'S' {
			fmt.Println(1)
			return
		} else {
			fmt.Println(2)
			return
		}
	}
	fmt.Println(r)
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
