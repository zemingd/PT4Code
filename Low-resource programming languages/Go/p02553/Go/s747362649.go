package main

import (
	"bufio"
	"fmt"
	"os"
)

const Inf = 1 << 60

func main() {
	a, b, c, d := ReadInt(), ReadInt(), ReadInt(), ReadInt()
	ans := -Inf
	for _, x := range []int{a, b} {
		for _, y := range []int{c, d} {
			if ans < x*y {
				ans = x * y
			}
		}
	}
	fmt.Println(ans)
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
