package main

import (
	"fmt"
	"math"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	if n <= k {
		fmt.Println(n)
	} else {
		if n%k == 0 {
			fmt.Println(0)
		} else {
			q := k * int(math.Ceil(float64(n)/float64(k)))
			if q > n {
				fmt.Println(q - n)
			} else {
				fmt.Println(n - q)
			}
		}
	}
}
