package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

//scanで一行づつ読み込む
var sc = bufio.NewScanner(os.Stdin)
var wtr = bufio.NewWriter(os.Stdout)

//sort
// array := []int{5, 1, 4, 2, 3}
// sort.Sort(sort.IntSlice(array))

func main() {
	// A := strings.Split(nextLine(), " ")

	X := strings.Split(nextLine(), " ")

	// Z := strings.Split(nextLine(), " ")
	// n, _ := strconv.Atoi(input[0])

	A, _ := strconv.Atoi(X[0])
	B, _ := strconv.Atoi(X[1])

	ans := 0
	// board := make([]cities, N)

	if B%A == 0 {
		ans = A + B
	} else {
		ans = B - A
	}

	fmt.Fprintln(wtr, ans)

	_ = wtr.Flush()
}

func addBuiscket(b int64) int64 {
	return b + 1
}
func exchangeToYen(b int64, rate int64) (rest int64, money int64) {
	return b - rate, 1
}
func exchangeToBuiscket(mone int64, buis int64, rate int64) (b int64, money int64) {
	return buis + rate, mone - 1
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
func max(a, b int64) int64 {
	if a > b {
		return a
	}
	return b
}
func com(a, b int) int {

	if a > b {
		return 0
	}
	return abs(a - b)
}

func abs(a int) int {
	if a < 0 {
		return a * -1
	}
	return a
}

type block struct {
	x     int
	y     int
	point int
}

type cities []block

func (p cities) Len() int {
	return len(p)
}

func (p cities) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p cities) Less(i, j int) bool {

	return p[i].point > p[j].point //p[i].x+p[i].y > p[j].x+p[j].y
}
