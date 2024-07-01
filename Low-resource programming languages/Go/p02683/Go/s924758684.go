package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

func main() {
	N := nextInt()
	M := nextInt()
	X := nextInt()

	table := make([][]int, N)
	for i := range table {
		table[i] = make([]int, M+1)
	}

	for i := 0; i < N; i++ {
		for j := 0; j < M+1; j++ {
			table[i][j] = nextInt()
		}
	}

	ans := maxInt()
	for i := 0; i < (1 << N); i++ {
		cost := 0
		values := make([]int, M)
		for j := 0; j < N; j++ {
			if (i>>j)&1 == 1 {
				cost += table[j][0]
				for k := 0; k < M; k++ {
					values[k] += table[j][k+1]
				}
			}
		}

		ok := true
		for _, v := range values {
			if v < X {
				ok = false
			}
		}

		if ok {
			ans = Min(cost, ans)
		}
	}
	if ans == maxInt() {
		fmt.Println(-1)
		return
	}
	fmt.Println(ans)
}

func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
}

func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}

func nextString() string {
	return nextReader()
}

func nextInts(n int) []int {
	r := make([]int, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt()
	}
	return r
}

func nextInt64s(n int) []int64 {
	r := make([]int64, n)
	for i := 0; i < n; i++ {
		r[i] = nextInt64()
	}
	return r
}

var nextReader func() string

func init() {
	nextReader = NewScanner()
}

func NewScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}

func Min(a int, b int) int {
	if a > b {
		return b
	}
	return a
}

func Max(a int, b int) int {
	if a > b {
		return a
	}
	return b
}

func MinA(arg ...int) int {
	var s = arg[0]
	for _, v := range arg {
		s = Min(s, v)
	}
	return s
}

func MaxA(arg ...int) int {
	var s = arg[0]
	for _, v := range arg {
		s = Max(s, v)
	}
	return s
}

func Abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

func maxInt() int {
	return math.MaxInt32
}

func maxInt64() int64 {
	return math.MaxInt64
}
