package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	As := ReadInts(N)

	m := make(map[int]int)
	for i := 0; i < N; i++ {
		m[i-As[i]]++
	}

	ans := 0
	for i := 0; i < N; i++ {
		ans += m[i+As[i]]
	}
	fmt.Println(ans)
}

func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
