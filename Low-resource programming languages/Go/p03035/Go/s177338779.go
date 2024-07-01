package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if a <= 5 {
		fmt.Println(0)
	} else if a >= 6 && a <= 12 {
		fmt.Println(b/2)
	} else {
		fmt.Println(b)
	}
}
