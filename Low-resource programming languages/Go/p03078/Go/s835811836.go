package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000009)
	sc.Split(bufio.ScanWords)
	x, _ := strconv.Atoi(Scanner())
	y, _ := strconv.Atoi(Scanner())
	z, _ := strconv.Atoi(Scanner())
	k, _ := strconv.Atoi(Scanner())
	a := make([]int, x)
	b := make([]int, y)
	c := make([]int, z)
	for i := 0; i < x; i++ {
		a[i], _ = strconv.Atoi(Scanner())
	}
	for i := 0; i < y; i++ {
		b[i], _ = strconv.Atoi(Scanner())
	}
	for i := 0; i < z; i++ {
		c[i], _ = strconv.Atoi(Scanner())
	}
	t := make([]int, 0)
	for i := 0; i < x; i++ {
		for j := 0; j < y; j++ {
			t = append(t, a[i]+b[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(t)))
	t = t[:smaller(k, len(t))]
	ans := make([]int, 0)
	for i := 0; i < z; i++ {
		for j := 0; j < len(t); j++ {
			ans = append(ans, c[i]+t[j])
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(ans)))
	for i := 0; i < k; i++ {
		fmt.Println(ans[i])
	}
}
func smaller(x, y int) int {
	if x < y {
		return x
	} else {
		return y
	}
}
