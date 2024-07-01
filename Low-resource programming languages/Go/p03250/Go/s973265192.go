package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	max := &a
	if *max < b {
		max = &b
	}
	if *max < c {
		max = &c
	}
	*max *= 10

	fmt.Println(a + b + c)
}
