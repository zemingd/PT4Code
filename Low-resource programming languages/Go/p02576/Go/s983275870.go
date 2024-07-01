package main

import "fmt"

func main() {
	var n, x, t int
	fmt.Scan(&n, &x, &t)
	a := (n + x - 1) / x
	fmt.Println(a * t)
}
