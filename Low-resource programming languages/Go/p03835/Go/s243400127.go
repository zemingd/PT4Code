package main

import (
	"fmt"
)

func main() {
	var k, s int
	fmt.Scanf("%d %d", &k, &s)

	count := 0

	for x := 0; x <= k; x++ {
		for y := 0; y <= k; y++ {
			if z := s - (x + y); 0 <= z && z <= k {
				count++
			}
		}
	}

	fmt.Println(count)
}