package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	a := ReadInts(N)
	down := true
	j := N - 1
	for i := 0; i < N; i++ {
		fmt.Printf("%d ", a[j])
		if down {
			j -= 2
			if j == -2 {
				j = 1
				down = false
			}
			if j == -1 {
				j = 0
				down = false
			}
		} else {
			j += 2
		}
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
