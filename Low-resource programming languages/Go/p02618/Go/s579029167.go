package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

func main() {
	D := ReadInt()
	cs := ReadInts(26)
	ss := make([][]int, D)
	for i := 0; i < D; i++ {
		ss[i] = ReadInts(26)
	}

	answers := []int{}
	last := make([]int, 26)

	for d := 1; d <= D; d++ {
		maxT, maxScore := -1, math.MinInt32
		for i := 0; i < 26; i++ {
			s := ss[d-1][i] - cs[i]*(d-last[i])
			if s > maxScore {
				maxT, maxScore = i, s
			}
		}
		last[maxT] = d
		answers = append(answers, maxT)
	}

	for _, v := range answers {
		fmt.Println(v + 1)
	}
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int) { Scan(&i); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
