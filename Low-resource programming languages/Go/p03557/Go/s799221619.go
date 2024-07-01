package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	for i := 0; i < n; i++ {
		b[i] = nextInt()
	}

	for i := 0; i < n; i++ {
		c[i] = nextInt()
	}

	sort.Ints(a)
	sort.Ints(b)
	sort.Ints(c)

	count := 0
	for i := 0; i < n; i++ {
		aa := lowerBound(a, b[i])
		cc := n - upperBound(c, b[i])

		count += aa * cc
	}

	fmt.Println(count)
	// for i := 0; i < n; i++ {
	// 	for j := 0; j < n; j++ {
	// 		for k := 0; k < n; k++ {
	// 			if a[i] < b[j] && b[j] < c[k] {
	// 				count++
	// 			}
	// 		}
	// 	}
	// }

	// fmt.Println(count)

}

func lowerBound(t []int, k int) int {
	lb := -1
	ub := len(t)
	for ub-lb > 1 {
		mid := (lb + ub) / 2

		if t[mid] >= k {
			ub = mid
		} else {
			lb = mid
		}
	}
	return ub
}

func upperBound(t []int, k int) int {
	lb := -1
	ub := len(t)
	for ub-lb > 1 {
		mid := (lb + ub) / 2

		if t[mid] <= k {
			lb = mid
		} else {
			ub = mid
		}
	}
	return ub
}
