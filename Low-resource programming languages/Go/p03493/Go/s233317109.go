package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scanf("%s", &a)

	var res int

	if a[0:1] == "1" {
		res = res + 1
	}

	if a[1:2] == "1" {
		res = res + 1
	}

	if a[2:3] == "1" {
		res = res + 1
	}

	fmt.Printf("%d\n", res)
}
