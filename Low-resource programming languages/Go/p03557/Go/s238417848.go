package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func readSlice(n int, sc *bufio.Scanner) []int {
	a := make([]int, n)
	for i := range a {
		sc.Scan()
		a[i], _ = strconv.Atoi(sc.Text())
	}
	return a
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func search(a []int, f func(int) bool) int {
	ok := len(a)
	ng := -1
	for abs(ok-ng) > 1 {
		mid := (ok + ng) / 2
		if f(mid) {
			ok = mid
		} else {
			ng = mid
		}
	}
	return ok
}

func lowerbound(a []int, x int) int {
	return search(a, func(i int) bool { return a[i] >= x })
}

func upperbound(a []int, x int) int {
	return search(a, func(i int) bool { return a[i] > x })
}

func main() {
	n := 0
	fmt.Scan(&n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	a := readSlice(n, sc)
	b := readSlice(n, sc)
	c := readSlice(n, sc)

	sort.Ints(a)
	sort.Ints(c)
	ans := int64(0)
	for _, e := range b {
		ans += int64(lowerbound(a, e)) * int64(n-upperbound(c, e))
	}
	fmt.Println(ans)
}
