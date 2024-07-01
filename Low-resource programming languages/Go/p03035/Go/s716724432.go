package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if a >= 13 {
		fmt.Println(b)
	} else if a <= 5 {
		fmt.Println(0)
	} else {
		fmt.Println(b / 2)
	}
}
