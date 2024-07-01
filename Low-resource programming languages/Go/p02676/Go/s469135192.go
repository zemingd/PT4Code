package main

import "fmt"

func main() {
	var s string
	var k int

	fmt.Scanf("%d", &k)
	fmt.Scanf("%s", &s)

	if len(s) > k {
		fmt.Printf("%s...", s[:k])
	} else {
		fmt.Printf("%s", s)
	}
}
