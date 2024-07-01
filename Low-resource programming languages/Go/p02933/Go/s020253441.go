package main

import (
	"fmt"
	//"math"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	var s string
	fmt.Scanf("%s", &s)
	if n < 3200 {
		fmt.Print("red")
	} else {
		fmt.Print(s)
	}
}