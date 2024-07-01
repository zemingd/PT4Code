package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	N := ReadInt()
	m := make(map[string]int)
	for i := 0; i < N; i++ {
		s := []byte(ReadString())
		sort.Slice(s, func(i, j int) bool {
			return s[i] < s[j]
		})
		m[string(s)]++
	}
	ans := 0
	for _, c := range m {
		ans += c * (c - 1) / 2
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
