package main

import "fmt"

func main() {
	var a, b, c, count int
	count = 1
	fmt.Scan(&a, &b)
	c = a
	for {
		a += c
		count++
		if a > b {
			break
		}
	}
	fmt.Println(count)
}
