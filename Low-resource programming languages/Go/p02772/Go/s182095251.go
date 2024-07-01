package main

import (
	"fmt"
)

func main()  {
	var n int
	fmt.Scan(&n)

	x := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&x[i])
	}

	var count int
	for i := 0; i < n; i++ {
		if x[i] % 2 == 0 {
			count++
		}
	}

	var count2 int
	for i := 0; i < n; i++ {
		if x[i] % 2 == 0 {
			count2++
			if (x[i] % 3 == 0 || x[i] % 5 == 0) {
				if (count2 == count) {
					fmt.Println("APPROVED")
					return
				} else {
					continue
				}
			} else {
				fmt.Println("DENIED")
				return
			}
		}
	}
	fmt.Println("DENIED")
}