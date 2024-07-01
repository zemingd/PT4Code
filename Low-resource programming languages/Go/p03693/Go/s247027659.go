package main

import (
	"fmt"
)

func main() {
	var r, g, b int
	fmt.Scan(&r, &g, &b)
	rgb := r*100 + b*10 + g
	if rgb%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}
