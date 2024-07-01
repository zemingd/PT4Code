package main

import (
	"bufio"
	"fmt"
	"math"
	"math/rand"
	"os"
	"time"
)

var D int
var cs []int
var ss [][]int

func main() {
	D = ReadInt()
	cs = ReadInts(26)
	ss = make([][]int, D)
	for i := 0; i < D; i++ {
		ss[i] = ReadInts(26)
	}

	// naives
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
		answers = append(answers, maxT+1)
	}

	rand.Seed(123456777)

	score := scores(answers)
	bestAnswers, bestScore := Dup(answers), score

	start := time.Now()
	timeout := 1950 * time.Millisecond

	for {
		elapsed := time.Now().Sub(start)
		if elapsed >= timeout {
			break
		}

		d, q := rand.Intn(D)+1, rand.Intn(26)+1
		orig := answers[d-1]
		answers[d-1] = q
		score := scores(answers)

		best := false
		if score > bestScore {
			best = true
			bestAnswers, bestScore = Dup(answers), score
		}

		if elapsed < time.Second {
			// 最初はベストのときだけ更新する
			if best {
				// none
			} else {
				answers[d-1] = orig // revert
			}
		} else {
			// answers[d-1] = orig // revert
		}
	}

	for _, v := range bestAnswers {
		fmt.Println(v)
	}
}

func Dup(xs []int) []int {
	return append([]int{}, xs...)
}

func scores(answers []int) int {
	last := make([]int, 26)
	score := 0
	for d := 1; d <= D; d++ {
		t := answers[d-1] - 1
		score += ss[d-1][t]
		last[t] = d
		for i := 0; i < 26; i++ {
			score -= cs[i] * (d - last[i])
		}
	}
	return score
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
