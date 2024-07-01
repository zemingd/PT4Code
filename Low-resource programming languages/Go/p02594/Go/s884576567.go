package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)
	if x >= 30 {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}
