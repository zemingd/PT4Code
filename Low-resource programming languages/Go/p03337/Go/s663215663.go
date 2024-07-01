package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	plus := a+b
	minus := a-b
	multiply := a*b
	if plus > minus && plus > multiply {
		fmt.Println(plus)
	} else if minus > plus && minus > multiply {
		fmt.Println(minus)
	} else {
		fmt.Println(multiply)
	}
}
