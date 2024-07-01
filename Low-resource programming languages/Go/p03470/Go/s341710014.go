package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scanf("%d\n", &n)
	slice := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d\n", &slice[i])
	}

	sort.IntSlice(slice).Sort()
	m := map[int]int{}
	for _, j := range slice {
		m[j] = 0
	}

	fmt.Println(len(m))

}
