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
			z := s - x - y
			if z <= k && z >= 0 {
				count++
			}
		}
	}
	fmt.Println(count)
}
