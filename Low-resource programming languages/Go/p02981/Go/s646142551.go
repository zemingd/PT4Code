package main

import (
	"fmt"
)

func min(a,b int)int {
	if a>b{
		return b
	}
	return a
}

func main() {
	var n, a, b int
	fmt.Scan(&n,&a,&b)
	fmt.Println(min(a*n,b))
}