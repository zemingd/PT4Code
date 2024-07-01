package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scanf("%d %d %d", &a, &b, &c)
	diff := c - a - b
	if 4*a*b < diff*diff {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
