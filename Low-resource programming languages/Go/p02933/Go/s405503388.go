package main

import "fmt"

func main() {
	var a int
	var s string
	fmt.Scan(&a)
	fmt.Scan(&s)

	if a >= 3200 {
		fmt.Println(s)
	} else {
		fmt.Println("red")
	}
}
