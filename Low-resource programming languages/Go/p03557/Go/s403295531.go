package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc.Split(bufio.ScanWords)

	var n int
	fmt.Scan(&n)
	a := scanInts(n)
	b := scanInts(n)
	c := scanInts(n)
	sort.Ints(a)
	sort.Ints(c)

	ans := 0
	for i := 0; i < n; i++ {
		// j := sort.SearchInts(a, b[i])
		// k := sort.SearchInts(c, b[i]+1)
		j := lowerBound(a, b[i])
		k := upperBound(c, b[i])
		ans += j * (n - k)
	}
	fmt.Println(ans)
}

func scanInts(n int) []int {
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}
	return a
}

func lowerBound(a []int, x int) int {
	lb, ub := -1, len(a)
	for ub-lb > 1 {
		mid := (lb + ub) / 2
		if a[mid] < x {
			lb = mid
		} else {
			ub = mid
		}
	}
	return ub
}

func upperBound(a []int, x int) int {
	lb, ub := -1, len(a)
	for ub-lb > 1 {
		mid := (lb + ub) / 2
		if a[mid] <= x {
			lb = mid
		} else {
			ub = mid
		}
	}
	return ub
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}
