package main

import "fmt"

func main() {
	var a, b, c, k int
	fmt.Scan(&a, &b, &c, &k)

	if a >= k {
		fmt.Println(1 * k)
	} else if b >= k-a {
		fmt.Println(1 * a)
	} else {
		fmt.Println(1*a - (1 * (k - a - b)))
	}
}
