package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var isProduct = false

func main() {
	nextReader = newScanner()

	k, n := nextInt(), nextInt()
	a := nextInts(n)

	td := 0
	md := 0

	sort.Ints(a)

	if a[n-1] == k {
		a = append([]int{0}, a[0:n-1]...)
	}

	// fmt.Println(a)

	for i := 0; i < n; i++ {

		var s int
		if i == n-1 {
			s = k
		} else {
			s = a[i+1]
		}

		d := s - a[i]

		if d > md {
			md = d
		}

		td += d
		// fmt.Println(i, a[i], d, td)
	}

	fmt.Println(td - md)

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
