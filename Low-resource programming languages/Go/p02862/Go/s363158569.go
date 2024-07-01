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

func modPow(a, n, mod int) int {
	res := 1
	for n > 0 {
		if (n & 1) > 0 {
			res = res * a % mod
		}
		a = a * a % mod
		n >>= 1
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
	fmt.Println(modComb(m+n, n, MOD))
}

func modComb(big, small, mod int) int {
	if big < 0 || small < 0 || big < small {
		return 0
	}
	tmp := modFact(big, mod) * modInv(modFact(small, mod), mod) % mod
	return tmp * modInv(modFact(big-small, mod), mod) % mod
}

func modFact(a, mod int) int {
	res := 1
	for i := a; i > 0; i-- {
		res *= i
		res %= mod
	}
	return res
}

func modInv(a, mod int) int {
	return modPow(a, mod-2, mod)
}
