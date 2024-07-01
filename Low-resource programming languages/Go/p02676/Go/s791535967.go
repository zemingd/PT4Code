package main

import (
	"fmt"
)

func main() {
	var s string
	var k int
	fmt.Scanf("%v\n%v", &k, &s)
	for i, c := range s {
		if i < k {
			fmt.Printf("%c", c)
		} else {
			fmt.Print("...")
			break
		}
	}
	fmt.Println()
}
