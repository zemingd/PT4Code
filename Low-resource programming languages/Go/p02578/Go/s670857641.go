package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	as := make([]int, n)
	for i := 0 ; i < n;i++ {
		fmt.Scan(&as[i])
	}
	ans := 0


	for i := 1 ; i<n;i++{
		if as[i] <  as[i-1] {
			ans += as[i-1] -as[i]
			as[i] += as[i-1] -as[i]
		}
	}

	fmt.Println(ans)


}

