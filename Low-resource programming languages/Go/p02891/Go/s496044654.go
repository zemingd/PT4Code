package main

import "fmt"

func main() {
	var a string
	count := 0
	fmt.Scan(&a)
	length := len(a)
	fmt.Printf("length: %d\n", length)
	if a[0:1] == a[length-1:] {
		count++
	}

	fmt.Printf("TOTAL: %d\n", count)
}
