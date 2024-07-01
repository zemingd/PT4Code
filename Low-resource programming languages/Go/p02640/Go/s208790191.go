package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	a := y / 2 / 2
	b := y / 4 / 2

	if a+b == x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}