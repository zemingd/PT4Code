package main

import (
	"fmt"
	"sort"
)

func main() {
	var n,k int
	fmt.Scan(&n,&k)
	
	fruits := make([]int, n)
	
	for i := range fruits {
		fmt.Scan(&fruits[i])
	}
	
	sort.Ints(fruits)

	sum := 0
	for i := 0; i < k; i++ {
		sum += fruits[i]
	}
	fmt.Println(sum)
}