package main

import (
	"fmt"
)

func main() {
	var a string

	fmt.Scan(&a)
	if a[0:1] == a[1:2] && a[2:3] == a[1:2] && a[0:1] == "R" {
		fmt.Println(3)
	} else if a[0:1] == a[1:2] || a[1:2] == a[2:3] && a[1:2] == "R" {

		fmt.Println(2)

	} else if a[0:1] == "R" || a[1:2] == "R" || a[2:3] == "R" {
		fmt.Println(1)
	} else {
		fmt.Println(0)
	}
}