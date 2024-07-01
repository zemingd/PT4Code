package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a+b == 3 {
		fmt.Println(3)
	} else if a+b == 4 {
		fmt.Println(2)
	} else {
		fmt.Println(1)
	}
}
