package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	a, b, c := ReadInt(), ReadInt(), ReadInt()
	if 4*a*b < (c-a-b)*(c-a-b) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
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
