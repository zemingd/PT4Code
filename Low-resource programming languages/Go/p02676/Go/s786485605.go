package main

import "fmt"

func main() {
	// Code for B - ... (Triple Dots)
	var k int
	var s string
	fmt.Scan(&k)
	fmt.Scan(&s)
	if len(s) <= k {
		fmt.Println(s)
	} else {
		fmt.Println(s[:k] + "...")
	}
}
