package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	ans := 0
	for i := 1; i <= N; i++ {
		if i%2 == 0 {
			continue
		}
		c := 0
		for j := 1; j <= i; j++ {
			if i%j == 0 {
				c++
			}
		}
		if c == 8 {
			ans++
		}
	}
	fmt.Println(ans)
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
