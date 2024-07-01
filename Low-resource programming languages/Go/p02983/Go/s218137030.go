package main

import "fmt"

var moduler = 2019

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	if l <= moduler && r >= moduler {
		fmt.Println(0)
	} else {
		l2 := l * (l + 1) % moduler
		r2 := r * (r - 1) % moduler
		if l2 < r2 {
			fmt.Println(l2)
		} else {
			fmt.Println(r2)
		}
	}
}
