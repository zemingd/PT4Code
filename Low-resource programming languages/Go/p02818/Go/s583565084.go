package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&k)

	if a > k {
		a = a - k
	} else {
		if (a + b - k) > 0 {
			b = a + b - k
			a = 0
		} else {
			a = 0
			b = 0
		}
	}
	fmt.Println(a)
	fmt.Println(b)

}
