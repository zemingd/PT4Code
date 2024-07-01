package main

import "fmt"

func main() {
	var a, b, r int
	fmt.Scan(&a, &b)
	for i := 1; i <= a; i++ {
		for j := 1; j <= b; j++ {
			if i == j && !(i == a && j == b) {
				r++
			}
		}
	}
	fmt.Println(r)
}