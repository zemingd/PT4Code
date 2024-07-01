package main

import (
	"fmt"
)

func main() {
	//fmt.Println("Hello World")

	var n int
	fmt.Scanf("%d", &n)

	fmt.Println(1000 - (n % 1000))
}
