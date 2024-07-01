package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	aMap := map[int]int{}
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		// fmt.Println(a)
		aMap[a]++
	}
	// pp.Print(aMap)
	var result = 0
	for _, v := range aMap {
		if v%2 == 1 {
			result++
		}
	}
	fmt.Println(result)
}
