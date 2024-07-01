package main

import (
	"bufio"
	"fmt"
	"os"
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

func f(a map[int]int) (int, int, int) {
	x0 := 0
	x1 := 0
	c := 0
	for i, v := range a {
		if v > x0 {
			x0, x1 = v, x0
			c = i
		}
	}
	return x0, x1, c
}

func main() {
	sc.Split(bufio.ScanWords)
	n := getInt()
	x := make(map[int]int)
	y := make(map[int]int)
	for i := 0; i < n; i++ {
		a := getInt()
		if i%2 == 0 {
			x[a]++
		} else {
			y[a]++
		}
	}

	x0, x1, xc := f(x)
	y0, y1, yc := f(y)

	ans := n - x0 - y0
	if xc == yc {
		if x0 > y0 {
			ans = n - x0 - y1
		} else {
			ans = n - x1 - y0
		}
	}
	out(ans)
}
