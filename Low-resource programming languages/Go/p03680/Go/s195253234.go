package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		a[i]--
	}
	c := 0
	isPassed := make([]bool, n)
	isPassed[0] = true
	rest := n
	now := make(map[int]struct{})
	now[0] = struct{}{}
	for rest > 0 && len(now) > 0 {
		next := make(map[int]struct{})
		for k := range now {
			if !isPassed[a[k]] {
				if a[k] == 1 {
					fmt.Println(c + 1)
					return
				}
				isPassed[a[k]] = true
				next[a[k]] = struct{}{}
				rest--
			}
		}
		c++
		now = next
	}
	fmt.Println(-1)
}
