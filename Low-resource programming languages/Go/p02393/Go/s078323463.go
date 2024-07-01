package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	for i := 0; i < 2; i++ {
		if a > b {
			a, b = b, a
		}

		if b > c {
			b, c = c, b
		}
	}

	fmt.Println(a, b, c)
}

