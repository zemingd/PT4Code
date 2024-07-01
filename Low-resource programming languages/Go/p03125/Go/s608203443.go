package main

import "fmt"

func main() {
	var n, p int
	fmt.Scan(&n)
	fmt.Scan(&p)

	if p%n != 0 {
		fmt.Println(p - n)
	} else {
		fmt.Println(p + n)
	}
}
