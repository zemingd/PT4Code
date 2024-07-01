package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, K := ReadInt(), ReadInt()
	m := make(map[int]bool)
	for i := 0; i < K; i++ {
		m[ReadInt()] = true
	}
	v := N
	for {
		if ok(v, m) {
			fmt.Println(v)
			return
		}
		v++
	}
}

func ok(v int, m map[int]bool) bool {
	for v > 0 {
		if m[v%10] {
			return false
		}
		v /= 10
	}
	return true
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
