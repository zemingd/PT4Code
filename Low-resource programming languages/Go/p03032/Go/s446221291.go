package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func stringLineScan() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(stringLineScan())
	k, _ := strconv.Atoi(stringLineScan())
	v := make([]int, n)
	ans := 0
	for i := 0; i < n; i++ {
		v[i], _ = strconv.Atoi(stringLineScan())
	}
	for i := 0; i < smaller(n, k); i++ {
		t := smaller(k-i, i)
		for r := 0; r < i; r++ {
			l := i - r
			x := make([]int, 0)
			for j := 0; j < l; j++ {
				x = append(x, v[j])
			}
			for j := 0; j < r; j++ {
				x = append(x, v[n-j-1])
			}
			sort.Ints(x)
			a := sum(x)
			for j := 0; j < t; j++ {
				if x[j] < 0 {
					a -= x[j]
				} else {
					break
				}
			}
			if ans < a {
				ans = a
			}
		}
	}
	fmt.Println(ans)
}
func sum(x []int) int {
	y := 0
	for _, v := range x {
		y += v
	}
	return y
}
func smaller(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
