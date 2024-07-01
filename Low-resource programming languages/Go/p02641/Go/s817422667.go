package main

import (
	"fmt"
	"sort"
)

func main() {
	var x, n int
	fmt.Scan(&x, &n)
	var p = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}
	sort.Ints(p)
	var q = make([]int, 100-n)
	for i, j := 0, 0; i < 100; i++ {
		if j < n && i+1 == p[j] {
			j++
		} else {
			q[i-j] = i + 1
		}
	}
	negativeMax, positiveMin := -100, 100
	for _, qi := range q {
		if qi <= x && negativeMax < qi-x {
			negativeMax = qi - x
		} else if x <= qi && qi-x < positiveMin {
			positiveMin = qi - x
		}
	}
	if -negativeMax <= positiveMin {
		fmt.Println(negativeMax + x)
	} else {
		fmt.Println(positiveMin + x)
	}
}
