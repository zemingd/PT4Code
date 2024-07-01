package main

import "fmt"

func main() {
	var a int
	var b int
	var c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	if a < b && b < c {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}

