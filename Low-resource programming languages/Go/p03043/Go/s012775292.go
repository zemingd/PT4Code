package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, K := ReadInt(), ReadInt()
	sum := 0.
	for i := 1; i <= N; i++ {
		k := 0
		j := i
		for j < K {
			k++
			j <<= 1
		}
		sum += 1 / float64(N*1<<k)
	}
	fmt.Println(sum)
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
