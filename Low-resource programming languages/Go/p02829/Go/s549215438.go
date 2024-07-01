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

	for i := 0; i < 2; i++ {
		if a[i] != i+1 {
			fmt.Println(i + 1)
			return
		}
	}
	fmt.Println(3)

}