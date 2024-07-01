package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var _sw = bufio.NewScanner(os.Stdin)

// issii
// issiiissii
// is_i_is_i_
func main() {
	var s []byte
	var k int
	fmt.Scan(&s)
	fmt.Scan(&k)

	var last byte
	var cnt int
	cnts := []int{}
	for _, c := range s {
		if c == last {
			cnt++
		} else {
			if last != 0 {
				cnts = append(cnts, cnt+1)
			}
			cnt = 0
		}
		last = c
	}
	cnts = append(cnts, cnt+1)

	if len(cnts) == 1 {
		ans := (cnts[0] * k) / 2
		fmt.Println(ans)
		return
	}

	mid := 0
	for i := 0; i < len(cnts)-1; i++ {
		mid += cnts[i] / 2
	}
	start := cnts[0] / 2
	end := cnts[len(cnts)-1] / 2

	sep := 0
	if s[0] == s[len(s)-1] {
		sep = (cnts[0] + cnts[len(cnts)-1]) / 2
	} else {
		sep = cnts[0]/2 + cnts[len(cnts)-1]/2
	}
	ans := start + end + mid*k + sep*(k-1)
	fmt.Println(ans)
}

func init() {
	_sw.Split(bufio.ScanWords)
}

func NextInt() int {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	i, e := strconv.Atoi(_sw.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func NextInts(n int) []int {
	a := make([]int, n)
	for i := range a {
		a[i] = NextInt()
	}
	return a
}

func NextString() string {
	if _sw.Scan() == false {
		panic(_sw.Err())
	}
	return _sw.Text()
}

func Max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func Min(x, y int) int {
	if x > y {
		return y
	}
	return x
}

func Bounded(lower, n, upper int) int {
	return Min(upper, Max(lower, n))
}

func SortInts(xs []int) {
	sort.Sort(sort.IntSlice(xs))
}

func ReverseSortInts(xs []int) {
	sort.Sort(sort.Reverse(sort.IntSlice(xs)))
}
