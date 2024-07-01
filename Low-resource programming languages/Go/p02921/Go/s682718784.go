package main

import "fmt"

func main() {
	var (
		a, b  int
		count int = 0
	)
	fmt.Scan(&a, &b)
	for {
		if a*count >= b {
			break
		}
		count++
	}
	fmt.Println(count)
}
