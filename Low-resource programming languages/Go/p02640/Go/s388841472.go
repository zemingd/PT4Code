package main

import "fmt"

func main() {
	var x, y int
	fmt.Scan(&x, &y)

	if y > 4*x || y < x*2 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
