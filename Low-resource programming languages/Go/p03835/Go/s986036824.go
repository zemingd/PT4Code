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
			for l := 0; l <= k; l++ {
				if i + j + l == s {
					ans++
					break
				}
			}
		}
	}

	fmt.Println(ans)
}
