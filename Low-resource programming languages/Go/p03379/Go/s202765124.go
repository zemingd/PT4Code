package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N := ReadInt()
	Xs := ReadInts(N)

	sorted := append([]int{}, Xs...)
	sort.Ints(sorted)
	a, b := sorted[N/2-1], sorted[N/2]

	for _, x := range Xs {
		if x >= b {
			fmt.Println(a)
		} else {
			fmt.Println(b)
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
