package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var isProduct = false

func dfs(i, j int) int {
	if j == 0 {
		return 0
	}

	return i * j
}

func main() {
	nextReader = newScanner()

	n, x, y := nextInt()+1, nextInt(), nextInt()

	dic := make(map[int]int, n)

	for i := 1; i < n; i++ {
		for j := i + 1; j < n; j++ {
			d := mins(
				abs(j-i),
				abs(x-i)+abs(y-j)+1,
				abs(y-i)+abs(x-j)+1,
			)

			// fmt.Println(i, j, d)

			dic[d]++
		}
	}

	for i := 1; i < n-1; i++ {
		fmt.Println(dic[i])
	}

}

/* --------------------------------------------------------------------------
 *  std.io
 * ------------------------------------------------------------------------- */
var nextReader func() string

func newScanner() func() string {
	r := bufio.NewScanner(os.Stdin)
	r.Buffer(make([]byte, 1024), int(1e+11))
	r.Split(bufio.ScanWords)
	return func() string {
		r.Scan()
		return r.Text()
	}
}
func nextString() string {
	return nextReader()
}
func nextInt64() int64 {
	v, _ := strconv.ParseInt(nextReader(), 10, 64)
	return v
}
func nextInt() int {
	v, _ := strconv.Atoi(nextReader())
	return v
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
func nextFloat64() float64 {
	f, _ := strconv.ParseFloat(nextReader(), 64)
	return f
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func mins(t ...int) int {
	if len(t) == 0 {
		return 0
	}

	min := t[0]
	for i := 1; i < len(t); i++ {
		if min > t[i] {
			min = t[i]
		}
	}
	return min
}

func abs(a int) int {
	if a >= 0 {
		return a
	} else {
		return 0 - a
	}
}
