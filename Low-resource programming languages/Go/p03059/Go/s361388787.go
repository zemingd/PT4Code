package main

import "fmt"

func main() {
	var a, b, t int
	fmt.Scan(&a, &b, &t)

	count := t / a // trunc
	fmt.Println(b * count)
}
