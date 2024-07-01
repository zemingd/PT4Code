package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	c := 1
	s := 0
	for {
		c += a
		c -= 1
		s++
		if c >= b {
			break
		}
	}
	fmt.Println(s)
}
