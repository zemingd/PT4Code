// +build ignore
package main

import (
	"bufio"
	"fmt"
	"io"
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

func genAry(a []int, i int, j2 int, N int, M int, fn func([]int)) {
	if i >= N {
		fn(a)
		return
	}
	for j := j2; j <= M; j++ {
		a[i] = j
		genAry(a, i+1, j, N, M, fn)
	}
}

func run(input io.Reader, output io.Writer) int {
	sc := NewScanner()
	N := sc.nextInt()
	M := sc.nextInt()
	Q := sc.nextInt()
	q := make([]map[string]int, Q)
	for i := 0; i < Q; i++ {
		q[i] = make(map[string]int)
		q[i]["a"] = sc.nextInt()
		q[i]["b"] = sc.nextInt()
		q[i]["c"] = sc.nextInt()
		q[i]["d"] = sc.nextInt()
	}

	A := make([]int, N)
	max := 0
	genAry(A, 0, 1, N, M, func(B []int) {
		tmp := 0
		for i := 0; i < Q; i++ {
			a := q[i]["a"]
			b := q[i]["b"]
			c := q[i]["c"]
			d := q[i]["d"]
			if A[b-1]-A[a-1] == c {
				tmp += d
			}
		}
		if max < tmp {
			max = tmp
		}
	})

	fmt.Println(max)

	return 0
}

func main() {
	os.Exit(run(os.Stdin, os.Stdout))
}
