package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	if 30 <= x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
