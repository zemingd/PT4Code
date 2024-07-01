package main

import "fmt"

var k, x int

func main() {
	fmt.Scan(&k, &x)
	if 500*k >= x {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
	return
}
