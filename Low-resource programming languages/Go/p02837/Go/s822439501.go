package main

import (
	"bufio"
	"fmt"
	"math/bits"
	"os"
)

func main() {
	N := ReadInt()
	adjM := make([][]int, N)
	for i := 0; i < N; i++ {
		adjM[i] = make([]int, N)
		for j := 0; j < N; j++ {
			adjM[i][j] = -1
		}
	}
	for i := 0; i < N; i++ {
		A := ReadInt()
		for j := 0; j < A; j++ {
			x, y := ReadInt()-1, ReadInt()
			adjM[i][x] = y
		}
	}

	ans := 0
	for S := 1; S < 1<<N; S++ {
		ok := true
		for i := 0; i < N; i++ {
			if S>>i&1 == 0 {
				continue
			}
			for j := 0; j < N; j++ {
				if i == j {
					continue
				}
				if adjM[i][j] == -1 {
					continue
				}
				if adjM[i][j] != S>>j&1 {
					ok = false
					break
				}
			}
		}
		if ok && bits.OnesCount(uint(S)) > ans {
			ans = bits.OnesCount(uint(S))
		}
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
func ReadInts(n int) (a []int) {
	for i := 0; i < n; i++ {
		a = append(a, ReadInt())
	}
	return
}
