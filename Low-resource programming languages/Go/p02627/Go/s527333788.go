package main

import "fmt"

func main() {
	var a string
	fmt.Scan(&a)

	if 'A' <= a[0] && a[0] <= 'Z' {
		fmt.Println("A")
	} else {
		fmt.Println("a")
	}
}
