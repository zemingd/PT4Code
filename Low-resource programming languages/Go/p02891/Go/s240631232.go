package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S, K := ReadString(), ReadInt()
	oneChars := true
	for _, si := range []byte(S) {
		if si != S[0] {
			oneChars = false
			break
		}
	}
	if oneChars {
		fmt.Println(len(S) * K / 2)
		return
	}

	if S[0] != S[len(S)-1] {
		fmt.Println(K * count(S))
	} else {
		c1 := count(S)
		c2 := count(S + S)
		fmt.Println((K-1)*(c2-c1) + c1)
	}
}

func count(s string) int {
	ans := 0
	seq := 1
	for i := 1; i < len(s); i++ {
		if s[i] == s[i-1] {
			seq++
		} else {
			ans += seq / 2
			seq = 1
		}
	}
	ans += seq / 2
	return ans
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
