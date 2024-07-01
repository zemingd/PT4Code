package main

import (
	"fmt"
)

func main() {
	var k, s int
	fmt.Scan(&k, &s)

	count := 0
	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			for z := 0; z <= k; z++ {
				if x+y+z == s {
					count++
				}
			}

		}
	}
	fmt.Println(count)
}
