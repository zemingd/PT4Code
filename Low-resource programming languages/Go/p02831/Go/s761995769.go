package main

import "fmt"

func gcd(a int, b int)int{
	if b == 0{
		return a
	}

	return gcd(b, a % b)
}

func lcm(a int, b int)int{
	return (a*b) / gcd(a, b)
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(lcm(a, b))
}