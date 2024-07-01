package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	A := ReadInts(N)

	s := 0
	for _, ai := range A {
		s += ai
	}

	ans := 0
	for _, ai := range A {
		s -= ai
		ans += ai * s
		ans %= Mod
	}
	fmt.Println(ans % Mod)
}

const Mod = int(1e9) + 7

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
