package main

import (
	"bufio"
	"fmt"
	"math"
	"math/rand"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func intScanner() int {
	n, _ := strconv.Atoi(Scanner())
	return n
}

func floatScanner() float64 {
	n, _ := strconv.ParseFloat(Scanner(), 64)
	return n
}
func stringToInt(s string) int {
	n, _ := strconv.Atoi(s)
	return n
}
func stringSliceScanner(n int) []string {
	a := make([]string, n)
	for i := 0; i < n; i++ {
		a[i] = Scanner()
	}
	return a
}
func intSliceScanner(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = intScanner()
	}
	return a
}
func larger(a, b int) int {
	if a < b {
		return b
	} else {
		return a
	}
}
func smaller(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}
func max(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x < a[i] {
			x = a[i]
		}
	}
	return x
}
func min(a []int) int {
	x := a[0]
	for i := 0; i < len(a); i++ {
		if x > a[i] {
			x = a[i]
		}
	}
	return x
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}

var mod int
var t float64

func main() {
	mod = 1000000007
	buf := make([]byte, 0)
	sc.Buffer(buf, mod)
	sc.Split(bufio.ScanWords)
	d := intScanner()
	c := intSliceScanner(26)
	s := make([][]int, d)
	for i := 0; i < d; i++ {
		s[i] = intSliceScanner(26)
	}
	best := -mod
	bestSchedule := make([]int, d)
	changeNum := 50
	for x := 0; x < 1; x++ {
		schedule := make([]int, d)
		for i := 0; i < d; i++ {
			schedule[i] = rand.Intn(26)
		}
		score := calcScore(schedule, c, s, d)
		t = float64(score) * 1.
		for y := 0; y < 100000; y++ {
			changes := make([]int, changeNum)
			pres := make([]int, changeNum)
			for i := 0; i < changeNum; i++ {
				changes[i] = rand.Intn(d)
				pres[i] = schedule[changes[i]]
				schedule[changes[i]] = rand.Intn(26)
			}
			nextScore := calcScore(schedule, c, s, d)
			if prob(score, nextScore) >= math.Abs(rand.Float64()) {
				score = nextScore
			} else {
				for i := 0; i < changeNum; i++ {
					schedule[changes[i]] = pres[i]
				}
			}
			if nextScore >= best {
				best = nextScore
				copy(bestSchedule, schedule)
			}
			t *= 0.999
			if (y+1)%400 == 0 && changeNum > 1 {
				changeNum--
			}
		}
	}
	for i := 0; i < d; i++ {
		fmt.Println(bestSchedule[i] + 1)
	}
}
func calcScore(schedule []int, c []int, s [][]int, d int) int {
	score := 0
	last := make([]int, 26)
	for i, v := range schedule {
		score += s[i][v]
		for j, _ := range last {
			last[j]++
		}
		last[v] = 0
		for j, v := range last {
			score -= c[j] * v
		}
	}
	return score
}
func prob(before int, after int) float64 {
	if before <= after {
		return 1.0
	}
	return math.Exp((float64(after) - float64(before)) / float64(t))
}
