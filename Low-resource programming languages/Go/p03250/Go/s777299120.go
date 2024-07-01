package main

import "fmt"

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	if b > a {
		a, b = b, a
	}
	if c > a {
		a, c = c, a
	}
	kotae := a*10 + b + c
	fmt.Println(kotae)

}
