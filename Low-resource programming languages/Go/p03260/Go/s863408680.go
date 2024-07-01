package main

import (
	"fmt"
)

func main() {
	var a int64
	var b int64
	fmt.Scanf("%d", &a)
	fmt.Scanf("%d", &b)
	if a%2 == 1 && b%2 == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
