package main

import (
	"bufio"
	"fmt"
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

const MOD = 1000000007

func main() {
	sc := NewScanner()
	X, Y := sc.nextInt(), sc.nextInt()
	if (2*X-Y)%3 != 0 {
		fmt.Println(0)
		return
	}
	m := (2*X - Y) / 3
	if (Y-m)%2 != 0 {
		fmt.Println(0)
		return
	}
	n := (Y - m) / 2
	if m < 0 || n < 0 {
		fmt.Println(0)
		return
	}
	fmt.Println(combination(m+n, n, MOD))
}

func combination(big, small, m int) int {
	a := 1
	for i := big; i > 0; i-- {
		a *= i
		a %= m
	}
	b := 1
	for i := small; i > 0; i-- {
		b *= i
		b %= m
	}
	diff := big - small
	c := 1
	for i := diff; i > 0; i-- {
		c *= i
		c %= m
	}
	tmp := (a * modinv(b, m)) % m
	return tmp * modinv(c, m) % m
}

func modinv(a, m int) int {
	b := m
	u := 1
	v := 0
	for b > 0 {
		t := a / b
		a -= t * b
		a, b = b, a
		u -= t * v
		u, v = v, u
	}
	u %= m
	if u < 0 {
		u += m
	}
	return u
}
