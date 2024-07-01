package main

import (
	"fmt"
)

func main() {
	var r int
	var g int
	var b int
	fmt.Scan(&r)
	fmt.Scan(&g)
	fmt.Scan(&b)
	sum := 100*r + 10*g + b
	if sum%4 == 0 {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}
}
