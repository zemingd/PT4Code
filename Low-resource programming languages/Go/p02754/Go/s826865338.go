package main

import "fmt"

func main() {
	var (
		n, a, b, num int
	)
	fmt.Scan(&n ,&a, &b)

	if n < a+b {
		num = a
	} else {
		num += a * (n / (a + b))
		if n-(a+b) > a {
			num += a
		} else {
			num += n - (a + b)
		}
	}
	fmt.Println(num)
}
