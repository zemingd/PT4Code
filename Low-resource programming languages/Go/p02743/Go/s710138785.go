package main

import "fmt"

var a, b, c int

func main() {
	fmt.Scan(&a, &b, &c)

	n := c*c + (a+b)*(a+b) - 4*a*b - 2*c*(a+b)

	if n > 0 {
		fmt.Println("Yes")

	} else {

		fmt.Println("No")
	}
}
