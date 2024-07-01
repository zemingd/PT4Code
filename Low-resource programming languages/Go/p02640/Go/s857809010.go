package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)
	a := y - 2*x
	b := 4*x - y
	if y < 2*x || 4*x < y {
		fmt.Println("No")
	} else if a%2 == 0 && b%2 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
