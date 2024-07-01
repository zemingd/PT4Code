package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N, K := ReadInt(), ReadInt()
	R, S, P := ReadInt(), ReadInt(), ReadInt()
	T := ReadString()

	ans := 0
	dp := make([][3]int, N+1+K)
	for k := 0; k < K; k++ {
		max := 0
		for i := k; i < N; i += K {
			for h := 0; h < 3; h++ {
				dp[i+K][h] = Max(
					dp[i][(h+1)%3],
					dp[i][(h+2)%3],
				)
				if T[i] == 'r' && h == 2 {
					dp[i+K][h] += P
				}
				if T[i] == 's' && h == 0 {
					dp[i+K][h] += R
				}
				if T[i] == 'p' && h == 1 {
					dp[i+K][h] += S
				}
				max = Max(max, dp[i+K][h])
			}
		}
		ans += max
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
