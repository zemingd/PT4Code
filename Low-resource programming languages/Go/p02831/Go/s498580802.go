package main

import "fmt"

func main() {
	var a, b, x, r int
	fmt.Scan(&a, &b)
	x = a * b
	r = b % a

	for {
		if r == 0 {
			break
		}
		b = a
		a = r
		r = b % a
	}

	fmt.Println(x / a)
}
