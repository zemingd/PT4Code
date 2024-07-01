package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if (a%2 == 0) || (b%2 == 0) {
		fmt.Println("No")
		return
	}
	fmt.Println("Yes")
}
