package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
)

func main() {
	s, t := []byte(ReadString()), []byte(ReadString())
	sort.Slice(s, func(i, j int) bool {
		return s[i] < s[j]
	})
	sort.Slice(t, func(i, j int) bool {
		return t[i] > t[j]
	})
	a, b := string(s), string(t)
	if a < b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
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
