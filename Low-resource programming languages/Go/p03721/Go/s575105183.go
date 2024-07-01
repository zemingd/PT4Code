package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

type Pair struct {
	a, b int
}

func main() {
	N, K := ReadInt(), ReadInt()
	pairs := make([]*Pair, N)
	for i := 0; i < N; i++ {
		pairs[i] = &Pair{
			a: ReadInt(),
			b: ReadInt(),
		}
	}
	sort.Slice(pairs, func(i, j int) bool {
		return pairs[i].a < pairs[j].b
	})
	s := 0
	for i := 0; i < N; i++ {
		s += pairs[i].b
		if s >= K {
			fmt.Println(pairs[i].a)
			return
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
