package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var K int
var count int = 0
var list = make([]int, 0)

func dp(c, d int) {
	if c > 10000000000 {
		return
	}

	// fmt.Println(c)
	count++
	list = append(list, c)

	min := d - 1
	max := d + 1
	if d == 0 {
		min = 0
	}
	if d == 9 {
		max = 9
	}

	for i := min; i <= max; i++ {
		dp(c*10+i, i)
	}

}

func main() {

	nextReader = newScanner()
	K = nextInt()

	for i := 1; i < 10; i++ {
		dp(i, i)
	}

	sort.Ints(list)

	fmt.Println(list[K-1])

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

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
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
