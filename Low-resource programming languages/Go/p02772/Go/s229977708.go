package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	x := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&x[i])
	}

	ans := "APPROVED"
	for i := 0; i < n; i++ {
		if x[i]%2 == 0 {
			if x[i]%3 != 0 && x[i]%5 != 0 {
				ans = "DENIED"
			}
		}
	}
	fmt.Println(ans)
}
