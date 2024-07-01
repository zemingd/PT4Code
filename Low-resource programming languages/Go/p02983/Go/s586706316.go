package main

import "fmt"

var moduler = 2019

func main() {
	var l, r int
	fmt.Scan(&l, &r)
	if l <= moduler && r >= moduler {
		fmt.Println(0)
	} else if l >= moduler {
		fmt.Println(l * (l + 1) % moduler)
	} else {
		fmt.Println(r * (r - 1) % moduler)
	}
}
