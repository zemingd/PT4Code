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

func getInts(N int) []int {
	ret := make([]int, N)
	for i := 0; i < N; i++ {
		ret[i] = getInt()
	}
	return ret
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

func calcLoss(day int, c, last []int) (int, []int) {
	ret := make([]int, 26)
	tot := 0
	for i := 0; i < 26; i++ {
		ret[i] = c[i] * (day - last[i])
		tot += ret[i]
	}
	return tot, ret
}

func main() {
	sc.Split(bufio.ScanWords)
	D := getInt()
	getInts(26)
	s := make([][]int, D)
	for i := 0; i < D; i++ {
		s[i] = getInts(26)
	}

	// last := make([]int, 26)

	// for i := 1; i < D; i++ {
	// 	t := getInt()
	// 	last[t] = i
	// 	ret, _ := calcLoss(i, c, last)
	// 	out(ret)
	// }

	for i := 0; i < D; i++ {
		maxS := 0
		idxS := 0
		for j := 0; j < 26; j++ {
			if maxS < s[i][j] {
				maxS = s[i][j]
				idxS = j
			}
		}
		out(idxS + 1)
	}
}
