package main

import (
	"fmt"
)

func main() {
	var r, g, b int
	fmt.Scan(&r, &g, &g)
	i := r*100 + g*10 + b

	if i%4 == 0 {
		fmt.Println("YES")
		return
	}
	fmt.Println("NO")
}
