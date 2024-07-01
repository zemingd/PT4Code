package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	var d = make([]int, n)
	for i := range d {
		fmt.Scan(&d[i])
	}
	sort.Ints(d)

	var numOfMochi int
	var tmp int
	for i := range d {
		if tmp < d[n-i-1] || tmp == 0 {
			numOfMochi++
		}
		tmp = d[n-i-1]
	}
	fmt.Println(numOfMochi)
}
