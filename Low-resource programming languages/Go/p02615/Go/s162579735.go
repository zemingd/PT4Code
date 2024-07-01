package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N := ReadInt()
	a := ReadInts(N)
	sort.Ints(a)
	s := Sum(a...)
	s -= a[0]
	fmt.Println(s)
}

func Sum(slice ...int) int {
	sum := 0
	for _, v := range slice {
		sum += v
	}
	return sum
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
