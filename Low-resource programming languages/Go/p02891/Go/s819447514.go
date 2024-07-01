package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	S, K := ReadString(), ReadInt()
	if len(S) == 1 {
		fmt.Println(len(S) / 2)
		return
	}
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
		fmt.Println(K * f(S))
	} else {
		c1 := f(S)
		c2 := f(S + S)
		fmt.Println((K-1)*(c2-c1) + c1)
	}
}

const Inf = 1 << 61

func f(s string) int {
	dp := make([][2]int, len(s)+1)
	for i := 0; i < len(s)+1; i++ {
		dp[i][0] = Inf
		dp[i][1] = Inf
	}
	dp[0][0] = 0
	dp[0][1] = 0
	for i := 0; i < len(s)-1; i++ {
		dp[i+1][1] = 1 + Min(dp[i][0], dp[i][1])
		if s[i] == s[i+1] {
			dp[i+1][0] = dp[i][1]
		} else {
			dp[i+1][0] = Min(dp[i][0], dp[i][1])
		}
	}
	return Min(dp[len(s)-1][:]...)
}

func Min(xs ...int) int {
	min := xs[0]
	for _, x := range xs[1:] {
		if min > x {
			min = x
		}
	}
	return min
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
