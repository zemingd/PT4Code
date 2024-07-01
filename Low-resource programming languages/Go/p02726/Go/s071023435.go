package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {

	N, X, Y := ReadInt(), ReadInt(), ReadInt()
	c := make(map[int]int)
	for i := 1; i < N; i++ {
		for j := i + 1; j <= N; j++ {
			d := Min(
				Abs(j-i),
				Abs(X-i)+1+Abs(j-Y),
			)
			c[d]++
		}
	}
	for k := 1; k < N; k++ {
		fmt.Println(c[k])
	}
}

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
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
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
