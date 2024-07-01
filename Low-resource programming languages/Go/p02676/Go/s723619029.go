package main

import "fmt"

func main() {
	var k int
	var s string
	fmt.Scanf("%d", &k)
	fmt.Scanf("%s", &s)

	if len(s) > k {
		s = s[:k] + "..."
	}

	fmt.Println(s)
}