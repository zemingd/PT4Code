package main

import (
	"fmt"
)

func main() {
	var r, g, b int
	fmt.Scan(&r, &g, &b)
	rgb := r*100 + g*10 + b
	if rgb%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}
