package main

import (
	"fmt"
)

func main(){
	var a, b int
	fmt.Scan(&a, &b)
	if a % 2 == 1 && b % 2 == 1{
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}