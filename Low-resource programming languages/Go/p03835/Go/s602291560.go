package main

import (
	"fmt"
)

func main() {
	var k, s int
	fmt.Scan(&k)
	fmt.Scan(&s)
	ans := 0
	for i := 0; i <= k; i++ {
		for j := 0; j <= k; j++ {
			t := s - (i + j)
			if 0 <= t && t <= k {
				ans++
			}
		}
	}

	fmt.Println(ans)
}
