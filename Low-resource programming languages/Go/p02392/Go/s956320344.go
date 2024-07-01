package main

import "fmt"

func main() {
	var a int
	var b int
	var c int
	fmt.Scan(&a, &b, &c)
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
