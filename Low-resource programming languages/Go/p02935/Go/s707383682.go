package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	v := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &v[i])
	}

	sort.Ints(v)
	sum := float64(v[0])
	for i := 1; i < n; i++ {
		sum = (sum + float64(v[i])) / 2.0
	}

	fmt.Println(sum)
}
