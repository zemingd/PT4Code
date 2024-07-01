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

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	a := make([]int, n)

	for i := 0; i < n; i++ {
		a[i] = nextInt()
	}

	tmp := a
	sort.Ints(tmp)

	for i := 0; i < n; i++ {
		ans := upperBound(tmp, a[i])

		fmt.Println(a[ans])
	}

}

func upperBound(t []int, k int) int {
	lb := -1
	ub := len(t) - 1
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
