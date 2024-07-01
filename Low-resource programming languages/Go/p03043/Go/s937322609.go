package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, K := ReadInt(), ReadInt()
	ans := 0.
	for i := 1; i <= N; i++ {
		base := 1
		for base*i < K {
			base <<= 1
		}
		ans += 1.0 / float64(base) / float64(N)
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
