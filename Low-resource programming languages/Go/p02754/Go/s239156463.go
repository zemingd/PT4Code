package main

import (
	"fmt"
)

func main() {
	var n, a, b, i, blue, red int
	fmt.Scanf("%d %d %d", &n, &a, &b)
	
	for i < n {
		for j := 0; j < a; j++ {
			blue++
			i++
			if i >= n {
				break
			}
		}
		if i >= n {
			break
		}
		for k := 0; k < b; k++ {
			red++
			i++
			if i >= n {
				break
			}
		}
	}
	fmt.Printf("%d\n", blue)
}