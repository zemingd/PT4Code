package main

import (
	"bufio"
	"fmt"
	"os"
)

const Inf = 1 << 60

func main() {
	N, K := ReadInt(), ReadInt()
	P := ReadInts(N)
	C := ReadInts(N)

	for i := 0; i < N; i++ {
		P[i]--
	}

	maxScore := -Inf
	for i := 0; i < N; i++ {
		seen := make([]bool, N)
		var dfs func(v int) (int, int)
		dfs = func(v int) (int, int) {
			if seen[v] {
				return 0, 0
			}
			seen[v] = true
			size, score := dfs(P[v])
			return size + 1, C[v] + score
		}
		size, loopScore := dfs(i)

		score := 0
		rest := 0
		if loopScore > 0 {
			loop := K/size - 1
			score += loop * loopScore
			rest = K - loop*size
			if score > maxScore {
				maxScore = score
			}
		} else {
			rest = size
		}
		v := i
		for j := 0; j < rest; j++ {
			v = P[v]
			score += C[v]
			if score > maxScore {
				maxScore = score
			}
		}
	}

	fmt.Println(maxScore)
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
