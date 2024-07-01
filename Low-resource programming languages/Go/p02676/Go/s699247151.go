package main

import "fmt"

func main() {
	var k int
	var s string
	fmt.Scan(&k)
	fmt.Scan(&s)
	if k < len(s) {
		fmt.Printf("%s...\n", s[:k])
	} else {
		fmt.Println(s)
	}
}
