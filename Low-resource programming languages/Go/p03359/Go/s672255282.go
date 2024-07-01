package main

import "fmt"

func main() {
	var a, b, r int
	fmt.Scan(&a, &b)
	for i := 1; i <= a-1; i++ {
		for j := 1; j <= 31; j++ {
			if i == j {
				r++
			}
		}
	}
	for j := 1; j <= b; j++ {
		if a == j {
			r++
		}
	}
	fmt.Println(r)
}