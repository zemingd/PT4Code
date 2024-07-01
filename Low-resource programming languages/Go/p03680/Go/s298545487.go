package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	var count int
	ok := false
	loc := 1
	for i := 0; i < n; i++ {
		loc = a[loc-1]
		count++
		if loc == 2 {
			ok = true
			break
		}
	}
	if ok {
		fmt.Println(count)
	} else {
		fmt.Println(-1)
	}
}
