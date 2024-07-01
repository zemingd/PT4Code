package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

type Scanner struct {
	sc *bufio.Scanner
}

func NewScanner() *Scanner {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1024), int(1e+9))
	return &Scanner{sc}
}

func (s *Scanner) nextStr() string {
	s.sc.Scan()
	return s.sc.Text()
}

func (s *Scanner) nextInt() int {
	i, e := strconv.Atoi(s.nextStr())
	if e != nil {
		panic(e)
	}
	return i
}

func (s *Scanner) nextRuneSlice() []rune {
	return []rune(s.nextStr())
}

func (s *Scanner) nextIntSlice(n int) []int {
	res := make([]int, n)
	for i := 0; i < n; i++ {
		res[i] = s.nextInt()
	}
	return res
}

func max(nums ...int) int {
	m := nums[0]
	for _, i := range nums {
		if m < i {
			m = i
		}
	}
	return m
}

func min(nums ...int) int {
	m := nums[0]
	for _, i := range nums {
		if m > i {
			m = i
		}
	}
	return m
}

func abs(x int) int {
	if x > 0 {
		return x
	}
	return -x
}

func pow(x, y int) int {
	res := 1
	for i := 0; i < y; i++ {
		res *= x
	}
	return res
}

type Point struct {
	x, y int
}

func distance(a, b Point) float64 {
	x := a.x - b.x
	y := a.y - b.y
	return math.Sqrt(float64(pow(x, 2) + pow(y, 2)))
}

func main() {
	sc := NewScanner()
	N := sc.nextInt()
	ps := make([]Point, N)
	for i := 0; i < N; i++ {
		x := sc.nextInt()
		y := sc.nextInt()
		ps[i] = Point{x, y}
	}
	var sum float64 = 0
	seen := make([]bool, N)
	visitedPoints := []Point{}
	var search func(index int)
	search = func(index int) {
		visitAll := true
		for i := 0; i < N; i++ {
			if !seen[i] {
				visitAll = false
			}
		}
		if visitAll {
			for i := 0; i < N-1; i++ {
				sum += distance(visitedPoints[i], visitedPoints[i+1])
			}
			return
		}
		for i, _ := range ps {
			if seen[i] {
				continue
			}
			seen[i] = true
			visitedPoints = append(visitedPoints, ps[i])
			search(i)
			seen[i] = false
			visitedPoints = visitedPoints[0 : len(visitedPoints)-1]
		}
	}

	for i := 0; i < N; i++ {
		seen[i] = true
		visitedPoints = append(visitedPoints, ps[i])
		search(i)
		seen[i] = false
		visitedPoints = visitedPoints[0 : len(visitedPoints)-1]
	}
	var divisor float64 = 1
	for i := N; i > 0; i-- {
		divisor *= float64(i)
	}
	fmt.Println(sum / divisor)
}
