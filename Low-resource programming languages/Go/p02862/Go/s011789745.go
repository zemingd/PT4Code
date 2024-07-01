package main

import (
	"fmt"
)

func main() {
	const mod int = 1000000007
	var x, y int
	fmt.Scan(&x, &y)

	a := 2*y - x
	b := 2*x - y
	if a < 0 || b < 0 {
		fmt.Println(0)
		return
	}
	if a%3 != 0 || b%3 != 0 {
		fmt.Println(0)
		return
	}
	a /= 3
	b /= 3
	if b == 0 {
		a, b = b, a
	}
	ans := 1
	for i := 1; i <= b; i++ {
		ans = (ans * (a + i))
	}
	// fmt.Println(ans)
	for i := 2; i <= b; i++ {
		ans /= i
	}
	fmt.Println(ans)
}
