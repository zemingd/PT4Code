package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	h := ReadInts(N)

	ans := 0
	for l := 0; l < N; l++ {
		for h[l] > 0 {
			ans++
			for r := l; r < N && h[r] > 0; r++ {
				h[r]--
			}
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
