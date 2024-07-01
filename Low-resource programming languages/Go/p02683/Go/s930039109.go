// +build ignore
package main

import (
	"bufio"
	"fmt"
	"io"
	"math"
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

func (s *Scanner) nextRuneSlice() []byte {
	return []byte(s.nextStr())
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

func gcd(x, y int) int {
	if x%y != 0 {
		return gcd(y, x%y)
	}
	return y
}

func run(input io.Reader, output io.Writer) int {
	sc := NewScanner()
	N := sc.nextInt()
	M := sc.nextInt()
	X := sc.nextInt()
	C := make([]int, N)
	A := make([][]int, N)
	for i := 0; i < N; i++ {
		C[i] = sc.nextInt()
		A[i] = make([]int, M)
		for j := 0; j < M; j++ {
			A[i][j] = sc.nextInt()
		}
	}

	ans := math.MaxInt64

	for s := 0; s < 1<<N; s++ {
		cost := 0
		m := make([]int, M)
		for i := 0; i < N; i++ {
			if (s>>i)&1 == 1 {
				cost += C[i]
				for j := 0; j < M; j++ {
					m[j] += A[i][j]
				}
			}
		}
		ok := true
		for j := 0; j < M; j++ {
			if m[j] < X {
				ok = false
				break
			}
		}
		if ok {
			if ans > cost {
				ans = cost
			}
		}
	}

	if ans == math.MaxInt64 {
		fmt.Println(-1)
	} else {
		fmt.Println(ans)
	}

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
