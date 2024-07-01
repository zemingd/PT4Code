package main

import "fmt"

func main() {
	var a, b, k int64
	fmt.Scan(&a, &b, &k)

	if k-a >= 0 {
		k = k - a
		a = 0
		if k-b >= 0 {
			b = 0
		} else {
			b = b - k
		}
	} else {
		a = a - k
	}
	fmt.Printf("%v %v\n", a, b)
}
