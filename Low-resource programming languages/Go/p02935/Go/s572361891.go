package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	ar := make([]int, n)
	for i := range ar {
		fmt.Scan(&ar[i])
	}
	sort.Ints(ar)
	sum := float64(ar[0])
	for i := 1; i < n; i++ {
		sum = (sum + float64(ar[i])) / float64(2)
	}
	fmt.Println(sum)
}
