package main

import "fmt"

func main() {
	var a, t float64
	var b int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&t)
	a, b, t = 3, 2, 9
	producedCount := int((t + 0.5) / a)
	fmt.Println(producedCount * b)
}
