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

const inf = 1000000

func main() {
	sc.Split(bufio.ScanWords)
	D, G := getInt(), getInt()
	p := make([]int, D)
	c := make([]int, D)
	s := make([]int, D)
	for i := 0; i < D; i++ {
		p[i] = getInt()
		c[i] = getInt()
		s[i] = p[i]*(i+1)*100 + c[i]
	}

	cnt := 0
	used := make([]bool, D)
	for i := D - 1; i >= 0; i-- {
		if G >= s[i] {
			G -= s[i]
			cnt += p[i]
			used[i] = true
		} else {
			break
		}
	}
	m := inf
	for i := D - 1; i >= 0; i-- {
		if used[i] == false && G < s[i] {
			t := (1 + i) * 100
			x := (G + t - 1) / t
			x = min(x, p[i])
			m = min(m, x)
		}
	}
	cnt += m
	out(cnt)
}
