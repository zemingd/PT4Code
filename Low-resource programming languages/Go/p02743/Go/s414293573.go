package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	if (c-a-b)*(c-a-b) > 4*a*b {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
