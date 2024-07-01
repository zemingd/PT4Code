package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

type Line struct {
	L int
	R int
}

func main() {
	s := IOInitialize()
	N := Int(s)
	M := Int(s)
	Q := Int(s)
	m := scanNums(s, M, N)
	targets := scanTargets(s, Q)

	cm := map[int]map[int]int{}
	for i := 0; i <= N; i++ {
		cm[i] = map[int]int{}
		for j := 0; j <= N; j++ {
			cm[i][j] = 0
		}
	}

	for i := 1; i <= N; i++ {
		for j := 1; j <= N; j++ {
			cm[i][j] = m[i][j] + cm[i][j-1]
		}
	}

	for _, target := range targets {
		cnt := 0
		for i := target.L; i <= target.R; i++ {
			cnt += cm[i][target.R]
		}
		fmt.Println(cnt)
	}
}

func IOInitialize() *bufio.Scanner {
	s := bufio.NewScanner(os.Stdin)
	s.Split(bufio.ScanWords)
	return s
}

func Int(s *bufio.Scanner) int {
	if !s.Scan() {
		panic("scan error")
	}

	value, err := strconv.Atoi(s.Text())
	if err != nil {
		panic("text to int error")
	}
	return value
}

func String(s *bufio.Scanner) string {
	if !s.Scan() {
		panic("scan error")
	}

	return s.Text()
}

func scanNums(s *bufio.Scanner, len int, n int) (m map[int]map[int]int) {
	m = map[int]map[int]int{}
	for i := 1; i <= n; i++ {
		m[i] = map[int]int{}
		for j := 1; j <= n; j++ {
			m[i][j] = 0
		}
	}
	for i := 0; i < len; i++ {
		l := Int(s)
		r := Int(s)
		m[l][r]++
	}
	return
}

func scanTargets(s *bufio.Scanner, len int) (lines []Line) {
	for i := 0; i < len; i++ {
		l := Int(s)
		r := Int(s)
		lines = append(lines, Line{L: l, R: r})
	}
	return
}
