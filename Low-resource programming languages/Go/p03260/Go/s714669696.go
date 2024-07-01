package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b)
	for c = 1; c <= 3; c++ {
		if a*b*c <= 3 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
