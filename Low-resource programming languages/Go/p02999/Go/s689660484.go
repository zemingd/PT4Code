package main

import "fmt"

func main() {
	var a, x int
	fmt.Scan(&a, &x)
	if x <= a {
		fmt.Println(10)
	} else {
		fmt.Println(0)
	}
}
