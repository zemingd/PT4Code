package main

import (
	"fmt"
)

func main() {
	var k int
	var s int
	fmt.Scan(&k)
	fmt.Scan(&s)

	count := 0
	for i := 0; i <= k; i++ {
		c := k
		if s-i < k {
			c = s - i
		}
		for j := 0; j <= c; j++ {
			if s-i-j <= k {
				count++
			}
		}
	}

	fmt.Println(count)
}
