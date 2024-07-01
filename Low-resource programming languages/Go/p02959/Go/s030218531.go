package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

func lowerBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] >= x
	})
	return idx
}

func upperBound(a []int, x int) int {
	idx := sort.Search(len(a), func(i int) bool {
		return a[i] > x
	})
	return idx
}

func main() {
	sc.Split(bufio.ScanWords)
	N := getInt()
	a := make([]int, N+1)
	b := make([]int, N)
	for i := 0; i <= N; i++ {
		a[i] = getInt()
	}
	for i := 0; i < N; i++ {
		b[i] = getInt()
	}
	ans := 0
	for i := 0; i < N; i++ {
		if b[i] >= a[i] {
			b[i] -= a[i]
			ans += a[i]
			a[i] = 0
		} else {
			a[i] -= b[i]
			ans += b[i]
		}

		ans += min(a[i+1], b[i])
		a[i+1] = max(0, a[i+1]-b[i])
	}
	out(ans)
}
