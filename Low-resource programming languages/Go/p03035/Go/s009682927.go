package main

import "fmt"

func main() {

	var a, b int
	fmt.Scan(&a, &b)

	if a >= 13 {
		fmt.Println(b)
	} else if a <= 12 && a >= 6 {
		fmt.Println(b / 2)
	} else if a <= 5 {
		fmt.Println(0)
	}

}
