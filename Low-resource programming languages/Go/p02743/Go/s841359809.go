package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	if c-a-b < 0 {
		fmt.Println("No")
		return
	}
	condition := (c-a-b)*(c-a-b) - 4*a*b
	if condition > 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
