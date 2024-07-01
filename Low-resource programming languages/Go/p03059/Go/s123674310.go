package main

import "fmt"

func main() {
	var a float64
	var t float64
	var b int

	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&t)

	count := int((t + 0.5) / a)
	fmt.Println(count * b)
}
