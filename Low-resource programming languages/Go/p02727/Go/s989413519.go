package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	X, Y, A, B, C := ReadInt(), ReadInt(), ReadInt(), ReadInt(), ReadInt()
	p := ReadInts(A)
	q := ReadInts(B)
	r := ReadInts(C)

	sort.Sort(sort.Reverse(sort.IntSlice(p)))
	sort.Sort(sort.Reverse(sort.IntSlice(q)))
	sort.Sort(sort.Reverse(sort.IntSlice(r)))
	s := make([]int, 0)
	s = append(s, p[:Min(X, A)]...)
	s = append(s, q[:Min(Y, B)]...)
	s = append(s, r...)
	sort.Sort(sort.Reverse(sort.IntSlice(s)))
	sum := 0
	for i := 0; i < X+Y; i++ {
		sum += s[i]
	}
	fmt.Println(sum)
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
