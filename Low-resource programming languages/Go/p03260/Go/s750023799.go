package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a != 2 && b != 2 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
