package main

import (
	"fmt"
)

func main() {
	var a int
	var b string

	fmt.Scanf("%d\n%s\n", &a, &b)

	if a >= 3200 {
		fmt.Println(b)
	} else {
		fmt.Println("red")
	}
}
