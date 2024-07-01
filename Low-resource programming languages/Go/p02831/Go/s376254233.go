package main

import "fmt"

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(lcm(a, b))

}

func lcm(i, j int) int {
	return i * j / gcd(i, j)
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
