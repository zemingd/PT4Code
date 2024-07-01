package main

import "fmt"

func main() {
	var X int

	fmt.Scan(&X)

	if X >= 30 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
