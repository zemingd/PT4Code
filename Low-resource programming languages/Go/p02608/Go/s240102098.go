package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	N := ReadInt()

	dp := make([]int, 1e4+1)
	for x := 1; x < 100; x++ {
		for y := x; y < 100; y++ {
			for z := y; z < 100; z++ {
				g := x*x + y*y + z*z + x*y + y*z + z*x
				if g > 1e4 {
					break
				}
				if x == y && y == z {
					dp[g] += 1
					continue
				}
				if x == y || y == z {
					dp[g] += 3
					continue
				}
				dp[g] += 6
			}
		}
	}

	for i := 1; i <= N; i++ {
		fmt.Println(dp[i])
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
