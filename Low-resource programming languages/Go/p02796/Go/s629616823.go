package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

// input scanner
var sc = bufio.NewScanner(os.Stdin)

const (
	initialBufSize = 10e4
	maxBufSize     = 10e6
)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}

func nextInt64() int64 {
	a, _ := strconv.ParseInt(next(), 10, 64)
	return a
}

func nextFloat64() float64 {
	a, _ := strconv.ParseFloat(next(), 64)
	return a
}

func nextInts(n int) []int {
	ret := make([]int, n)
	for i := 0; i < n; i++ {
		ret[i] = nextInt()
	}
	return ret
}
func nextFloats(n int) []float64 {
	ret := make([]float64, n)
	for i := 0; i < n; i++ {
		ret[i] = nextFloat64()
	}
	return ret
}
func nextStrings(n int) []string {
	ret := make([]string, n)
	for i := 0; i < n; i++ {
		ret[i] = next()
	}
	return ret
}

// util
func max(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n > ans {
			ans = n
		}
	}
	return ans
}

func min(l []int) int {
	ans := l[0]
	for _, n := range l {
		if n < ans {
			ans = n
		}
	}
	return ans
}

type Xl struct {
	X int
	L int
}

type Xls []Xl

func (f Xls) Len() int {
	return len(f)
}

func (f Xls) Less(i, j int) bool {
	return f[i].X < f[j].X
}

func (f Xls) Swap(i, j int) {
	f[i], f[j] = f[j], f[i]
}

// main
func main() {
	buf := make([]byte, initialBufSize)
	sc.Buffer(buf, maxBufSize)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	xls := make([]Xl, n, n)
	ans := 0
	ans2 := 0
	for i := 0; i < n; i++ {
		xls[i].X = nextInt()
		xls[i].L = nextInt()
	}
	sort.Sort(Xls(xls))

	current := 1
	for i := 0; i < n; i++ {
		nextx := xls[i].X
		nextl := xls[i].L
		current = nextx + nextl
		find := false
		var findIdx int
		for j := i + 1; j < n && xls[j].X-xls[j].L < current; j++ {
			xj := xls[j].X
			lj := xls[j].L
			if xj+lj < nextx+nextl {
				nextx, nextl = xj, lj
				find = true
				findIdx = j
			}
			i++
		}
		if find {
			i = findIdx
		}
		ans++
	}

	for i := n - 1; i >= 0; i-- {
		nextx := xls[i].X
		nextl := xls[i].L
		current = nextx - nextl
		find := false
		var findIdx int
		for j := i - 1; j >= 0 && current < xls[j].X+xls[j].L; j-- {
			xj := xls[j].X
			lj := xls[j].L
			if xj-lj > nextx-nextl {
				nextx, nextl = xj, lj
				find = true
				findIdx = j
			}
			i--
		}
		if find {
			i = findIdx
		}
		ans2++
	}
	fmt.Println(max([]int{ans, ans2}))
}
