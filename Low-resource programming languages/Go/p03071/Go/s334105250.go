package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a > b {
		fmt.Println(a+a-1)
	} else if b > a {
		fmt.Println(b+b-1)
	} else {
		fmt.Println(a+b)
	}
}