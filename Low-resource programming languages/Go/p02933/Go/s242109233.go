package main

import (
	"fmt"
)

func main() {
	var a int
	var st string
	fmt.Scan(&a, &st)
	if a >= 3200 {
		fmt.Println(st)
	} else {
		fmt.Println("red")
	}
}
