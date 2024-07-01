package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if a == 3 && b == 1 || a == 1 && b == 3 || a == 1 && b == 1 {
		fmt.Print("Yes")
		return
	}

	fmt.Print("No")
}
