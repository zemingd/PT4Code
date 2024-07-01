package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	a := ReadInts(3)
	sort.Ints(a)
	fmt.Println(a[0] * a[1] / 2)
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
