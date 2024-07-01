package main

import (
	"bufio"
	_ "container/heap"
	"fmt"
	"os"
	_ "sort"
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

type Res struct {
	by, bx, y, x int
}

func main() {
	sc := NewScanner()
	wtr := bufio.NewWriter(os.Stdout)
	defer wtr.Flush()
	H, W := sc.nextInt(), sc.nextInt()
	G := make([][]int, H)
	for i := 0; i < H; i++ {
		G[i] = make([]int, W)
	}
	for i := 0; i < H; i++ {
		G[i] = sc.nextIntSlice(W)
	}
	changed := 0
	res := []Res{}
	for i := 0; i < H; i++ {
		if i%2 == 0 {
			for j := 0; j < W; j++ {
				if G[i][j]%2 == 0 {
					continue
				}
				ny, nx := i, j
				if j+1 < W {
					nx++
				} else if i+1 < H {
					ny++
				}
				changed++
				res = append(res, Res{i, j, ny, nx})
				G[ny][nx]++
			}
		} else {
			for j := W - 1; j >= 0; j-- {
				if G[i][j]%2 == 0 {
					continue
				}
				ny, nx := i, j
				if j-1 >= 0 {
					nx--
				} else if i+1 < H {
					ny++
				}
				changed++
				res = append(res, Res{i, j, ny, nx})
				G[ny][nx]++
			}
		}
	}
	fmt.Fprintln(wtr, changed)
	for i := 0; i < changed; i++ {
		r := res[i]
		fmt.Fprintln(wtr, r.by+1, r.bx+1, r.y+1, r.x+1)
	}
}
