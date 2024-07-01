package main

import (
	"fmt"
)

func main() {
	var (
		r, g, b int
	)

	fmt.Scan(&r, &g, &b)

	ans := r*100 + g*10 + b

	if ans%4 == 0 {
		fmt.Print("YES")
	} else {
		fmt.Print("NO")
	}
}
