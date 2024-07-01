package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)

	// var n, k int
	// fmt.Scan(&n, &k)
	n := nextInt()
	k := nextInt()
	as := make([]int, n)
	for i := 0; i < n; i++ {
		// fmt.Scan(&as[i])
		as[i] = nextInt()
	}

	var stop bool
	rs := as
	for i := 0; i < k; i++ {
		rs, stop = action(rs)
		if stop {
			break
		}
	}

	for i := 0; i < n; i++ {
		if i < n-1 {
			fmt.Printf("%d ", rs[i])
		} else {
			fmt.Println(rs[i])
		}
	}
}

func action(as []int) ([]int, bool) {
	n := len(as)
	// rs := make([]int, n)
	// for i := 0; i < n; i++ {
	// 	a := as[i]
	// 	for j := i - a; j <= i+a; j++ {
	// 		if 0 <= j && j < n {
	// 			rs[j]++
	// 		}
	// 	}
	// }

	cnt := 0
	d := make([]int, n+1)
	for i := 0; i < n; i++ {
		a := as[i]
		l := max(0, i-a)
		r := min(i+a+1, n)
		d[l]++
		d[r]--

		if a == n {
			cnt++
		}
	}

	s := make([]int, len(d)+1)
	for i := 0; i < n; i++ {
		s[i+1] = s[i] + d[i]
	}

	rs := make([]int, n)
	for i := 0; i < n; i++ {
		rs[i] = s[i+1]
	}
	return rs, cnt == n
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
