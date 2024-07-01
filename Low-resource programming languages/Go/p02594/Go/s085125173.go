package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)
	res := "No"
	if a >= 30{
		res = "Yes"
	}
	fmt.Println(res)
}
