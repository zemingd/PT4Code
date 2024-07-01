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
	for i, j := 0, N-1; i < j; {
		a[i], a[j] = a[j], a[i]
		i++
		j--
	}
	ans := 0
	for i := 1; i < N; i++ {
		ans += a[i/2]
	}
	fmt.Println(ans)
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
