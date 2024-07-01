package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)
	// sc.Split(bufio.ScanLines)
	n := readInt()
	hpArr := make([]int, 0, n)
	for i := 0; i < n; i++ {
		hpArr = append(hpArr, readInt())
	}
	sort.Ints(hpArr)
	ans := math.MaxInt64
	for i := 0; i < n-1; i++ {
		min := solve(hpArr[i+1], hpArr[i])
		ans = minFunc(ans, min)
	}
	fmt.Println(ans)

}

func solve(a, b int) int {
	r := a % b
	for r != 0 {
		a = b
		b = r
		r = a % b
	}
	return b
}

//便利関数群
var sc = bufio.NewScanner(os.Stdin)

func read() string {
	sc.Scan()
	return sc.Text()
}

func readInt() int {
	i, _ := strconv.Atoi(read())
	return i
}

func max(x, y int) int {
	if x > y {
		return x
	} else {
		return y
	}
}

func minFunc(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}

func abs(x, y int) int {
	if x-y > 0 {
		return x - y
	}
	return -(x - y)
}

type XY struct {
	x, y int
}

type Points []XY

func (p Points) Len() int {
	return len(p)
}
func (p Points) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}
func (p Points) Less(i, j int) bool {
	return p[i].x < p[j].x
}
func (p Points) remove(i int) Points {
	if i >= len(p) {
		return p
	}
	return append(p[:i], p[i+1:]...)
}
