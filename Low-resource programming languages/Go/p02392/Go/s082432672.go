package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)

	if a < b && b < c {
		fmt.Println("Yes")
		return
	}
	fmt.Println("No")
}

