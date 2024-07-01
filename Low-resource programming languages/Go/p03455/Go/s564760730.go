package main

import "fmt"

func main() {
	var a, b int

	fmt.Scanf("%d\n", &a)

	fmt.Scanf("%d\n", &b)

	if a*b%2 == 0 {
		fmt.Println("Even")
	} else {
		fmt.Println("Odd")
	}

}
