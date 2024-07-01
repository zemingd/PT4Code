package main

import (
	"fmt"
	"math"
)

func main() {
	var n, x, y int
	fmt.Scan(&n, &x, &y)
	result := make([]int, n-1)
	for nc := 0; nc-1 < n; nc++ {
		for nd := nc + 1; nd < n; nd++ {
			min := nd - nc
			if nc+1 <= x && x <= nd+1 && nc+1 <= y && y <= nd+1 {
				//fmt.Print("m")
				c := nd - nc - (y - x) + 1
				if min > c {
					min = c
				}
			}
			//fmt.Println(min, "{", nc+1, nd+1, "}")
			result[min-1]++
		}
	}
	for _, v := range result {
		fmt.Println(v)
	}
}