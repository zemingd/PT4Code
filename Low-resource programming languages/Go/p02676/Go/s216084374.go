package main

import "fmt"

func main() {
	var k int
	fmt.Scan(&k)
	var s string
	fmt.Scan(&s)
	if len(s) <= k {
		fmt.Println(s)
	} else {
		fmt.Println(s[:k] + "...")
	}
}
