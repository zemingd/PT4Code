package main

import (
	"fmt"
)

func main() {
	var a, b, x int
	ans := "NO"
	fmt.Scan(&a, &b, &x)
	for i := 0; i <= b; i++ {
		if i + a == x {
			ans = "YES"
		}
	}
	fmt.Println(ans)
}
