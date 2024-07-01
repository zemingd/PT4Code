package main

import "fmt"

func main() {
	var c int
	var a string

	fmt.Scanf("%s", &a)

	if a[0] == '1' {
		c++
	}
	if a[1] == '1' {
		c++
	}
	if a[2] == '1' {
		c++
	}
	fmt.Printf("%d\n", c)
}


