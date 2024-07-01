package main

import (
	"fmt"
)

func main() {
	var x, y int
	fmt.Scan(&x, &y)
	if y <= 1 {
		fmt.Println("No")
		return
	}
	if y%2 != 0 {
		fmt.Println("No")
		return
	}
	if y <= 4*x {
		fmt.Println("Yes")
		return
	} else {
		fmt.Println("No")
		return
	}
}
