package main

import (
	"fmt"
)

func main() {
	var number int
	var str string
	fmt.Scanf("%d", &number)
	fmt.Scanf("%s", &str)
	if number >= 3200 {
		fmt.Println(str)
	} else {
		fmt.Println("red")
	}
}
