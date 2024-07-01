package main

import (
	"fmt"
)

func main() {
	var k int
	var x int
	fmt.Scan(&k)
	fmt.Scan(&x)
	if k*500 >= x {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
