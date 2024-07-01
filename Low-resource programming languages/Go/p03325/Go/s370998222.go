package main

import (
	"fmt"
)
func wariwari(n int) int {
	count := 0
	for {
		if n % 2 == 0 {
			count ++
			n /= 2
		}else {
			return count
		}
	}
}


func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	var count int
	for i := 0; i < n; i++ {
		count += wariwari(a[i])
	}

	fmt.Println(count)
}

