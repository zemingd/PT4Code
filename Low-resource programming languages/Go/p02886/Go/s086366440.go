package main

import (
	"fmt"
)

func main() {
	var all int
	fmt.Scanf("%d", &all)

	takoyaki := make([]int, all)
	for i := 0; i < all; i++ {
		fmt.Scanf("%d", &takoyaki[i])
	}

	result := 0
	for i, baseT := range takoyaki {
		for j, t := range takoyaki {
			if i >= j {
				continue
			}

			product := baseT * t
			result = result + product
		}
	}

	fmt.Printf("%d", result)
}
