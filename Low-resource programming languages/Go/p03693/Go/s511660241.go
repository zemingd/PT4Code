package main

import (
	"fmt"
)

func main() {
	var r, g, b int
	fmt.Scanf("%d %d %d", &r, &g, &b)
	if val := 100*r + 10*g + b; val%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
