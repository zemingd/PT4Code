package main

import (
	"fmt"
	"os"
)

func gcd(a, b int) int {
	if b == 0 {
		return a
	}

	return gcd(b, a%b)
}

func lcm(a, b int) int {
	return a * b / gcd(a, b)
}

func run() int {
	var a, b int
	fmt.Scanf("%d %d\n", &a, &b)

	fmt.Println(lcm(a, b))

	return 0
}

func main() {
	os.Exit(run())
}
