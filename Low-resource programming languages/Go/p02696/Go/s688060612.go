package main

import "fmt"

func main() {
	var a, b, n int
	fmt.Scan(&a, &b, &n)

	i := n % b
	fmt.Println(a*i/b - a*(i/b))
}