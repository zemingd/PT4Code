package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	if k >= a {
		k -= a
		a = 0
	} else {
		a -= k
	}
	if k > 0 {
		if k >= b {
			k -= b
			b = 0
		} else {
			b -= k
		}
	}
	fmt.Println(a, b)
}
