package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	ans := 2019

	if b-a >= 2019 {
		ans = 0
	} else {
		for l := a; l < b; l++ {
			for r := a + 1; r <= b; r++ {
				if (l*r)%2019 < ans {
					ans = (l * r) % 2019
				}
			}
		}
	}
	fmt.Println(ans)
}
