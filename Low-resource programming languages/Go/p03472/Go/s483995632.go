package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N, H := ReadInt(), ReadInt()
	a := make([]int, N)
	b := make([]int, N)
	for i := 0; i < N; i++ {
		a[i], b[i] = ReadInt(), ReadInt()
	}

	e := Max(a...)
	c := make([]int, 0)
	for i := 0; i < N; i++ {
		if b[i] > e {
			c = append(c, b[i])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(c)))

	cnt := 0
	for _, ci := range c {
		if H <= 0 {
			fmt.Println(cnt)
			return
		}
		H -= ci
		cnt++
	}
	if H <= 0 {
		fmt.Println(cnt)
		return
	}
	fmt.Println(cnt + (H+e-1)/e)
}

func Max(xs ...int) int {
	max := xs[0]
	for _, x := range xs[1:] {
		if max < x {
			max = x
		}
	}
	return max
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
