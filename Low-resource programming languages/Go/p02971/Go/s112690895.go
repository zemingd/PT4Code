package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N := ReadInt()
	A := ReadInts(N)

	B := append([]int{}, A...)
	sort.Ints(B)
	max1 := B[N-1]
	max2 := B[N-2]

	for i := 0; i < N; i++ {
		if A[i] == max1 {
			fmt.Println(max2)
		} else {
			fmt.Println(max1)
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
