package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var (
	n     int
	m     int
	q     int
	table [][]int
)

func main() {
	n = nextInt()
	m = nextInt()
	q = nextInt()
	table = make([][]int, q)
	for i := 0; i < q; i++ {
		a := nextInt()
		b := nextInt()
		c := nextInt()
		d := nextInt()
		table[i] = []int{a, b, c, d}
	}

	as := []int{}
	fmt.Println(dfs(as))

}

func dfs(as []int) int {
	ans := 0
	if len(as) == n {
		for _, t := range table {
			if as[t[1]-1]-as[t[0]-1] == t[2] {
				ans += t[3]
			}
		}
		return ans
	}

	prev := 1
	if len(as) != 0 {
		prev = as[len(as)-1]
	}
	for i := prev; i < m+1; i++ {
		as = append(as, i)
		ans = Max(ans, dfs(as))
		as = as[:len(as)-1]
	}
	return ans
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
