package main

import (
	"fmt"
)

func main()  {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	if (a == b && b == c) {
		fmt.Println("No")
		return
	} else if (a == b || a == c || b == c) {
		fmt.Println("Yes")
		return
	} 
	fmt.Println("No")
}