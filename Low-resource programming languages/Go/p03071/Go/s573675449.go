package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	ans := 0
	for i:= 0; i < 2; i++ {
		if a > b {
			ans += a
			a -= 1
		} else {
			ans += b
			b -= 1
		}
	}
	fmt.Println(ans)
}