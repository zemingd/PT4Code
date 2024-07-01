package main

import (
	"bufio"
	"fmt"
	"os"
)

const Mod = 2019

func main() {
	S := ReadString()
	s := make([]int, len(S)+1)
	base := 1
	c := make([]int, Mod)
	c[0]++
	for i := 0; i < len(S); i++ {
		s[i+1] = s[i] + int(S[len(S)-1-i]-'0')*base
		s[i+1] %= Mod
		c[s[i+1]]++

		base = 10 * base % Mod
	}
	ans := 0
	for i := 0; i < Mod; i++ {
		ans += (c[i] * (c[i] - 1)) / 2
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
