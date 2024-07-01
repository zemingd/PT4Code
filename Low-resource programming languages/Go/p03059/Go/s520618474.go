package main

import "fmt"

// Problem A
func main() {
	var a, b, t, sum, i float64
	fmt.Scan(&a, &b, &t)
	for i = 1; i*a < t+0.5; i++ {
		sum += b
	}
	fmt.Println(sum)
}
