package main

import "fmt"

func main() {
	var x, a int
	fmt.Scanf("%d", &x)
	fmt.Scanf("%d", &a)

	if x < a {
		fmt.Println("0")
	} else if a <= x {
		fmt.Println("10")
	}

}
