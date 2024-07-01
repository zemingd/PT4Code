package main

import (
	"fmt"
)

func main() {
	var k, n int
	fmt.Scan(&k, &n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	var max int
	for i := 0; i < n; i++ {
		var d int
		if i == n-1 {
			d = as[0] + k - as[i]
		} else {
			d = as[i+1] - as[i]
		}
		if d > max {
			max = d
		}
	}

	fmt.Println(k - max)
}
