package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	A, B, M := ReadInt(), ReadInt(), ReadInt()
	a := ReadInts(A)
	b := ReadInts(B)
	ans := Min(a...) + Min(b...)
	for i := 0; i < M; i++ {
		x, y, c := ReadInt()-1, ReadInt()-1, ReadInt()
		v := a[x] + b[y] - c
		ans = Min(ans, v)
	}
	fmt.Println(ans)
}

func Min(xs ...int) int {
	min := xs[0]
	for _, x := range xs[1:] {
		if min > x {
			min = x
		}
	}
	return min
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
