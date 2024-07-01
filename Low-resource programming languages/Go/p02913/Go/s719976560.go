package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()
	S := ReadString()

	dp := make([][]int, N+1)
	for i := 0; i < N+1; i++ {
		dp[i] = make([]int, N+1)
	}
	for i := N - 1; i >= 0; i-- {
		for j := N - 1; j >= 0; j-- {
			if S[i] == S[j] {
				dp[i][j] = 1 + dp[i+1][j+1]
			}
		}
	}

	ans := 0
	for i := 0; i < N-1; i++ {
		for j := i + 1; j < N; j++ {
			ans = Max(ans, Min(dp[i][j], j-i))
		}
	}
	fmt.Println(ans)
}

func Max(xs ...int) int {
	max := xs[0]
	for _, x := range xs[1:] {
		if max < x {
			max = x
		}
	}
	return max
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
