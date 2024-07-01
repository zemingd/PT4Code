package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	fmt.Println(monster(a))
}

func monster(a []int) int {
	g := gcd(a[0], a[1])
	for i := 2; i < len(a); i++ {
		g = gcd(g, a[i])
	}
	return g
}

func gcd(a, b int) int {
	if b == 0 {
		return a
	}
	return gcd(b, a%b)
}
