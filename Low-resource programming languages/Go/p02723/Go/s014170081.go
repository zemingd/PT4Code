package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S := ReadString()
	if S[2] == S[3] && S[4] == S[5] {
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
