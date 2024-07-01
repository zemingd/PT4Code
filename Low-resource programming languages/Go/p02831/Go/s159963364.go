package main

import "fmt"

func gcd(x, y int) int {
	for y > 0 {
		x, y = y, x%y
	}
	return x
}

func lcm(x, y int) int {
	return x * y / gcd(x, y)
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(lcm(a, b))
}
