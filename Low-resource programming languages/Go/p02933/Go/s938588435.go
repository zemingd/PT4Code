package main

import "fmt"

func main() {
	var a int
	var s string
	fmt.Scan(&a)
	fmt.Scan(&s)

	if 3200 <= a {
		fmt.Println(s)
		return
	}

	fmt.Println("red")
}
