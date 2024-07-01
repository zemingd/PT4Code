package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n+1)
	bs := make([]int, n)
	for i := 0; i < n+1; i++ {
		fmt.Scan(&as[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&bs[i])
	}

	count := 0
	for i := 0; i < n; i++ {
		if bs[i] > as[i] {
			count = count + as[i]
			bs[i] -= as[i]

			if bs[i] > as[i+1] {
				count = count + as[i+1]
				bs[i] -= as[i+1]
			} else {
				count = count + bs[i]
				as[i+1] -= bs[i]
			}
		} else {
			count = count + bs[i]
		}
	}
	fmt.Print(count)
}