package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func lowerBound(a []int, x int) int {
	// (l, r]
	n := len(a)
	l := -1
	r := n
	for r-l > 1 {
		mid := (l + r) / 2
		if a[mid] >= x {
			r = mid
		} else {
			l = mid
		}
	}
	return r
}

func main() {
	var n int
	fmt.Scan(&n)

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)
	for i := 0; i < n; i++ {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	for i := 0; i < n; i++ {
		sc.Scan()
		b[i], _ = strconv.Atoi(sc.Text())
	}
	for i := 0; i < n; i++ {
		sc.Scan()
		c[i], _ = strconv.Atoi(sc.Text())
		c[i] = -c[i]
	}
	sort.Ints(a)
	sort.Ints(c)

	ans := int64(0)
	for _, x := range b {
		ans += int64(lowerBound(a, x)) * int64(lowerBound(c, -x))
	}
	fmt.Println(ans)
}
