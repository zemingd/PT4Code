package main

import (
	"fmt"
)

func main() {
	var a, b, x int
	ans := "No"
	fmt.Scan(&a, &b, &x)
	for i := 0; i <= b; i++ {
		if i + a == x {
			ans = "Yes"
		}
	}
	fmt.Println(ans)
}