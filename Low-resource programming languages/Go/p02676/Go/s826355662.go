package main

import (
	"fmt"
)

func main() {
	var k int
	var s string
	fmt.Scan(&k, &s)
	if k < len(s) {
		fmt.Print(s[:k])
		fmt.Println("...")
	} else {
		fmt.Println(s)
	}
}
