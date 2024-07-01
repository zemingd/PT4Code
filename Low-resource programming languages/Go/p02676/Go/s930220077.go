package main

import (
	"fmt"
)

func main() {
	var k int
	var s string

	fmt.Scan(&k)
	fmt.Scan(&s)

	i := len(s)

	if i <= k {
		fmt.Println(s)
	} else {
		fmt.Print(s[:k])
		fmt.Print("...")

	}

}
