package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a == 2 || b == 2 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
