package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	ans := make([]int, 3)
	l := make([][]int, n)
	for i := 0; i < n; i++ {
		t := make([]int, 3)
		t[0], _ = strconv.Atoi(stringLineScan())
		t[1], _ = strconv.Atoi(stringLineScan())
		t[2], _ = strconv.Atoi(stringLineScan())
		l[i] = t
	}
	for i := 0; i <= 100; i++ {
		for j := 0; j <= 100; j++ {
			t := make([]int, 0)
			for k := 0; k < n; k++ {
				x, y, h := l[k][0], l[k][1], l[k][2]
				if h > 0 {
					t = append(t, h+abs(x-i)+abs(y-j))
				}
			}
			if all(t) {
				ans[0], ans[1], ans[2] = i, j, t[0]
			}
		}
	}
	fmt.Println(strings.Trim(fmt.Sprint(ans), "[]"))
}
func abs(x int) int {
	if x < 0 {
		x = -x
	}
	return x
}
func all(x []int) bool {
	if len(x) == 0 {
		return false
	} else {
		f := true
		y := x[0]
		for _, i := range x {
			if i != y {
				f = false
			}
		}
		return f
	}
}
