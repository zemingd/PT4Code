package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
	"time"
)

const (
	limitSecs = 2.0
)

// D
var (
	D         int
	c         [26]int
	s         [][26]int
	startTime time.Time
)

func min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func calcScore(t []int) int {
	var last [26]int
	score := 0
	S := 0
	for i := 0; i < 26; i++ {
		last[i] = -1
	}
	for d := 0; d < len(t); d++ {
		S += s[d][t[d]]
		last[t[d]] = d
		for i := 0; i < 26; i++ {
			S -= c[i] * (d - last[i])
		}
		score += max(1000000+S, 0)
	}
	return score
}

func solution3aSub(t []int, S int, score int, last []int) ([]int, int, int, []int) {
	d := len(t)
	t = append(t, 0)
	bestNewS := -1
	bestNewScore := -1
	bestNewContestType := -1
	for i := 0; i < 26; i++ {
		t[len(t)-1] = i
		newS := S + s[d][t[d]]
		old := last[i]
		last[i] = d
		for j := 0; j < 26; j++ {
			newS -= c[j] * (d - last[j])
		}
		newScore := score + max(1000000+newS, 0)
		if newScore > bestNewScore {
			bestNewS = newS
			bestNewScore = newScore
			bestNewContestType = i
		}
		last[i] = old
	}
	t[len(t)-1] = bestNewContestType
	last[bestNewContestType] = d
	return t, bestNewS, bestNewScore, last
}

func solution3a() []int {
	t := make([]int, 0, D)
	score := 0
	S := 0
	last := make([]int, 26)
	for i := 0; i < 26; i++ {
		last[i] = -1
	}
	for d := 0; d < D; d++ {
		t, S, score, last = solution3aSub(t, S, score, last)
	}
	return t
}

func solution3() []int {
	var t []int
	for d := 0; d < D; d++ {
		score := -1
		best := -1
		t = append(t, 0)
		for i := 0; i < 26; i++ {
			t[len(t)-1] = i
			newScore := calcScore(t)
			if newScore > score {
				best = i
				score = newScore
			}
		}
		t[len(t)-1] = best
	}
	return t
}

func solution4Sub(t []int) int {
	l := max(len(t)+13, D)
	for len(t) != l {
		score := -1
		best := -1
		t = append(t, 0)
		for i := 0; i < 26; i++ {
			t[len(t)-1] = i
			newScore := calcScore(t)
			if newScore > score {
				best = i
				score = newScore
			}
		}
		t[len(t)-1] = best
	}
	return calcScore(t)
}

func solution4() []int {
	var t []int
	for d := 0; d < D; d++ {
		score := -1
		best := -1
		t = append(t, 0)
		for i := 0; i < 26; i++ {
			t[len(t)-1] = i
			newScore := solution4Sub(t)
			if newScore > score {
				best = i
				score = newScore
			}
		}
		t[len(t)-1] = best
	}
	return t
}

func solution4aSubSub(t []int, S int, score int, last []int) ([]int, int, int, []int) {
	d := len(t)
	t = append(t, 0)
	bestNewS := -1
	bestNewScore := -1
	bestNewContestType := -1
	for i := 0; i < 26; i++ {
		old := last[i]
		t[d] = i
		newS := S + s[d][t[d]]
		last[i] = d
		for j := 0; j < 26; j++ {
			newS -= c[j] * (d - last[j])
		}
		newScore := score + max(1000000+newS, 0)
		if newScore > bestNewScore {
			bestNewS = newS
			bestNewScore = newScore
			bestNewContestType = i
		}
		last[i] = old
	}
	t[d] = bestNewContestType
	last[bestNewContestType] = d
	return t, bestNewS, bestNewScore, last
}

func solution4aSub(t []int, S int, score int, last []int) int {
	xt := make([]int, len(t))
	copy(xt, t)
	xLast := make([]int, len(last))
	copy(xLast, last)
	d := len(t)
	for i := d; i < min(d+10, D); i++ {
		xt, S, score, xLast = solution4aSubSub(xt, S, score, xLast)
	}
	return score
}

func solution4a() []int {
	var t []int
	S := 0
	score := 0
	last := make([]int, 26)
	for i := 0; i < 26; i++ {
		last[i] = -1
	}
	for d := 0; d < D; d++ {
		t = append(t, 0)
		newBestScore := -1
		newBestContestType := -1
		for i := 0; i < 26; i++ {
			old := last[i]
			t[d] = i
			newS := S + s[d][t[d]]
			last[i] = d
			for i := 0; i < 26; i++ {
				newS -= c[i] * (d - last[i])
			}
			newScore := score + max(1000000+newS, 0)
			newScore = solution4aSub(t, newS, newScore, last)
			if newScore > newBestScore {
				newBestContestType = i
				newBestScore = newScore
			}
			last[i] = old
		}
		t[d] = newBestContestType
		last[newBestContestType] = d
		S += s[d][t[d]]
		for i := 0; i < 26; i++ {
			S -= c[i] * (d - last[i])
		}
		score += max(1000000+S, 0)
	}
	return t
}

func optimize3(t []int) []int {
	var (
		d   [3]int
		old [3]int
	)
	rand.Seed(time.Now().UnixNano())
	score := calcScore(t)
	for time.Now().Sub(startTime).Seconds()+0.011 < limitSecs {
		n := rand.Intn(3) + 1
		for i := 0; i < n; i++ {
			d[i] = rand.Intn(D)
			old[i] = t[d[i]]
			t[d[i]] = rand.Intn(26)
		}
		newScore := calcScore(t)
		if newScore < score {
			for i := n - 1; i > -1; i-- {
				t[d[i]] = old[i]
			}
		} else {
			score = newScore
		}
	}
	return t
}

func optimize1(t []int) []int {
	rand.Seed(time.Now().UnixNano())
	score := calcScore(t)
	for time.Now().Sub(startTime).Seconds()+0.015 < limitSecs {
		d := rand.Intn(D)
		q := rand.Intn(26)
		old := t[d]
		t[d] = q
		newScore := calcScore(t)
		if newScore < score {
			t[d] = old
		} else {
			score = newScore
		}
	}
	return t
}

func main() {
	defer flush()

	startTime = time.Now()

	D = readInt()
	for i := 0; i < 26; i++ {
		c[i] = readInt()
	}
	s = make([][26]int, D)
	for i := 0; i < D; i++ {
		for j := 0; j < 26; j++ {
			s[i][j] = readInt()
		}
	}

	t := solution4a()
	t = optimize3(t)
	for d := 0; d < D; d++ {
		println(t[d] + 1)
	}
}

const (
	ioBufferSize = 1 * 1024 * 1024 // 1 MB
)

var stdinScanner = func() *bufio.Scanner {
	result := bufio.NewScanner(os.Stdin)
	result.Buffer(make([]byte, ioBufferSize), ioBufferSize)
	result.Split(bufio.ScanWords)
	return result
}()

func readString() string {
	stdinScanner.Scan()
	return stdinScanner.Text()
}

func readInt() int {
	result, err := strconv.Atoi(readString())
	if err != nil {
		panic(err)
	}
	return result
}

var stdoutWriter = bufio.NewWriter(os.Stdout)

func flush() {
	stdoutWriter.Flush()
}

func println(args ...interface{}) (int, error) {
	return fmt.Fprintln(stdoutWriter, args...)
}
