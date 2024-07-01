package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	if a == 1 && b == 2 {
		fmt.Println(3)
	} else if a == 1 && b == 3 {
		fmt.Println(2)
	} else if a == 2 && b == 1 {
		fmt.Println(3)
	} else if a == 2 && b == 3 {
		fmt.Println(1)
	} else if a == 3 && b == 1 {
		fmt.Println(2)
	} else if a == 3 && b == 2 {
		fmt.Println(1)
	}

}
