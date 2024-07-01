package main

import "fmt"

func gcd(a, b int) int {
	for b != 0 {
		c := a % b
		a, b = b, c
	}
	return a
}

func nextInt() int {
	var x int
	fmt.Scan(&x)
	return x
}

func main() {
	n := nextInt()

	var ans int
	for i := range make([]struct{}, n) {
		a := nextInt()
		if i == 0 {
			ans = a
		}
		ans = gcd(ans, a)
	}
	fmt.Println(ans)
}
