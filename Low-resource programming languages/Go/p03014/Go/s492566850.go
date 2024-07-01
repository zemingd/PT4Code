package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

// I/O
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

func (s *Scanner) nextFloat() float64 {
	f, e := strconv.ParseFloat(s.nextStr(), 64)
	if e != nil {
		panic(e)
	}
	return f
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

func (s *Scanner) nextFloatSlice(n int) []float64 {
	res := make([]float64, n)
	for i := 0; i < n; i++ {
		res[i] = s.nextFloat()
	}
	return res
}

// Arithmetic
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

func ceil(a, b int) int {
	if a%b == 0 {
		return a / b
	} else {
		return a/b + 1
	}
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a / gcd(a, b) * b
}

// Sort
type RuneSlice []rune

func (a RuneSlice) Len() int           { return len(a) }
func (a RuneSlice) Less(i, j int) bool { return a[i] < a[j] }
func (a RuneSlice) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }

// Main
const MOD = int(1e+9) + 7
const INF = 1 << 60

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	defer wtr.Flush()
	H, W := sc.nextInt(), sc.nextInt()
	S := make([][]rune, H)
	for i := 0; i < H; i++ {
		S[i] = sc.nextRuneSlice()
	}
	Yoko := make([][]int, H)
	Tate := make([][]int, H)
	for i := 0; i < H; i++ {
		Yoko[i] = make([]int, W)
		Tate[i] = make([]int, W)
	}
	for i := 0; i < H; i++ {
		l := 0
		r := 0
		for j := 0; j < W; j++ {
			if S[i][j] == '#' {
				l = j + 1
				r++
				continue
			}
			for r < W && S[i][r] != '#' {
				r++
			}
			Yoko[i][j] = r - l
		}
	}
	for i := 0; i < W; i++ {
		u := 0
		d := 0
		for j := 0; j < H; j++ {
			if S[j][i] == '#' {
				u = j + 1
				d++
				continue
			}
			for d < H && S[d][i] != '#' {
				d++
			}
			Tate[j][i] = d - u
		}
	}
	ans := 0
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if Yoko[i][j]+Tate[i][j]-1 > ans {
				ans = Yoko[i][j] + Tate[i][j] - 1
			}
		}
	}

	//fmt.Fprintln(wtr, Yoko)
	//fmt.Fprintln(wtr, Tate)
	fmt.Fprintln(wtr, ans)
}
