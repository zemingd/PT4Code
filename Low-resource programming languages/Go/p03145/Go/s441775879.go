package main

import "fmt"

func main() {
	var a, b, c int
	_, _ = fmt.Scan(&a, &b, &c)
	if a >= b && a >= c {
		fmt.Println(b * c / 2)
	} else if b >= a && b >= c {
		fmt.Println(a * c / 2)
	} else {
		fmt.Println(a * b / 2)
	}
}