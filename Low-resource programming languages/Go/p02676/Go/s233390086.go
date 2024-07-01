package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)
	var s string
	fmt.Scan(&s)
	if len(s) > k {
		fmt.Print(s[:k])
		fmt.Print("...")
	} else {
		fmt.Print(s)
	}
}
