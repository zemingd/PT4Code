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

var used = [366][27]bool{}

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

	rand.Seed(12345682)

	lastAnswers := answers
	lastScore := scores(lastAnswers)

	start := time.Now()
	timeout := 1930 * time.Millisecond
	for time.Now().Sub(start) < timeout {
		d, q := rand.Intn(D)+1, rand.Intn(26)+1
		if used[d][q] {
			continue
		}
		used[d][q] = true
		newAnswers := Dup(lastAnswers)
		newAnswers[d-1] = q
		newScore := scores(newAnswers)
		if newScore >= lastScore {
			lastAnswers, lastScore = newAnswers, newScore
		}
	}

	for _, v := range lastAnswers {
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
