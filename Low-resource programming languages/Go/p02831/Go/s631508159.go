package main

import "fmt"

func gcd(a, b int) int {
	if a == 0 {
		return b
	}
	return gcd(b%a, a)
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	var g = gcd(a, b)
	var ret = (a / g) * (b / g) * g
	fmt.Println(ret)
}