package main

import "fmt"

func main() {
	var k int
	var s string

	fmt.Scan(&k)
	fmt.Scan(&s)

	if len(s) <= k {
		fmt.Println(s)
	} else {
		fmt.Println(s[0:k] + "...")
	}
}
