package main

import "fmt"

func main() {
	var a, b, sum int
	fmt.Scan(&a, &b)
	if a >= b {
		sum += a
		a = a - 1
		if a >= b {
			sum += a
		} else {
			sum += b
		}
	} else {
		sum += b
		b = b - 1
		if a >= b {
			sum += a
		} else {
			sum += b
		}
	}
	fmt.Println(sum)
}
