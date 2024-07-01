package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}

	count := 0
	next := 1
	for _, ai := range a {
		if ai == next {
			next++
			continue
		}
		count++
	}
	if count == n {
		fmt.Println(-1)
	} else {
		fmt.Println(count)
	}

}
