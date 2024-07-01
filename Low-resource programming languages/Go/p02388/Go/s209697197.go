package main

import "fmt"

func main() {
	// Get a memory space for int
	var a int
	// Set inputted value to the memory
	fmt.Scan(&a)
	fmt.Println(a * a * a)
}
