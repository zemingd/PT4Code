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

func optimize1(t []int) []int {
	score := calcScore(t)
	for time.Now().Sub(startTime).Seconds()+0.15 < limitSecs {
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

	t := solution3()
	t = optimize1(t)
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
