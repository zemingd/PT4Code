package main

import (
	"fmt"
)

func main() {
	var (
		n, a, b, num int
	)
	fmt.Scan(&n, &a, &b)

	shou := n / (a+b)
	amari := n % (a+b)

	for i := 0; i < shou; i++ {
		num += a
	}

	if amari < a {
		num += amari
	} else {
		num += a
	}

	fmt.Println(num)
}
