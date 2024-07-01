package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a)
	fmt.Scan(&b)

	ans := 3
	if a*b == 3 {
		ans = 2
	} else if a*b == 6 {
		ans = 1
	}
	fmt.Println(ans)
}
