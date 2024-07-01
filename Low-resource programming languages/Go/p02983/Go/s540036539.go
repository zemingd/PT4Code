package main

import (
	"fmt"
	"sort"
)

func main() {
	// Code for C - Remainder Minimization 2019
	var L, R int
	fmt.Scan(&L, &R)

	if R-L+1 < 2019 {
		temp := make([]int, 0)
		for i := L; i <= R; i++ {
			temp = append(temp, i%2019)
		}
		sort.Sort(sort.IntSlice(temp))
		fmt.Println((temp[0] * temp[1]) % 2019)
	} else {
		fmt.Println("0")
	}
}
