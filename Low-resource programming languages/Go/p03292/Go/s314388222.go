package main

import (
	"fmt"
	"sort"
)

func main() {
	var a []int
	for i := 0; i < 3; i++ {
		var tmp int
		fmt.Scan(&tmp)
		a = append(a, tmp)
	}

	sort.Ints(a)
	diff := 0
	for i := 2; i > 0; i-- {
		diff += a[i] - a[i-1]
	}
	fmt.Println(diff)
}
