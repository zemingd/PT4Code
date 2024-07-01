package main

import "fmt"

func main() {
	var a, b, t int
	fmt.Scan(&a, &b, &t)
	sum := 0
	for i := a; i <= t; i += a {
		sum += b
	}
	fmt.Println(sum)
}