package main

import (
	"fmt"
)

func main() {
	var k int
	var s int
	fmt.Scanf("%d %d", &k, &s)

	var count int
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
