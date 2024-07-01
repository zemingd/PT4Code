package main

import (
	"fmt"
)

func max(a int, b int) int{
	if a < b {
		return b
	}
	return a
}


func main() {
	var a,b int
	fmt.Scan(&a,&b)
	plus := a+b
	minus := a-b
	multi := a*b
	max := max(max(plus, minus),multi)
	
	fmt.Println(max)
}