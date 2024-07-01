package main

import (
	"fmt"
	"sort"
)

func main() {
	a := make([]int, 2)
	for i := 0; i < 2; i++ {
		fmt.Scan(&a[i])
	}

	sort.Ints(a)

	var f bool
	f = true

	for i := 0; i < 2; i++ {
		if a[i] != i+1 {
			fmt.Println(i + 1)
			f = false
		}
	}

	if f {
		fmt.Println(3)
	}

}