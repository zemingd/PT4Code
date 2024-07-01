package main

import "fmt"

func main() {
	var n, x, t int
	fmt.Scan(&n, &x, &t)

	fmt.Println((n + x - 1) / x * t)
}
