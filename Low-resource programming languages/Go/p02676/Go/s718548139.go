package main

import "fmt"

func main() {
	var s string
	var k int

	fmt.Scanf("%s", &s)
	fmt.Scanf("%d", &k)

	if len(s) > k {
		fmt.Printf("%s...", s[:k+1])
	} else {
		fmt.Printf("%s", s)
	}
}
