package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n)
	fmt.Scan(&r)

	if n > 10 {
		fmt.Println(r)
	} else {
		nr := r + (100 * (10 - n))
		fmt.Println(nr)
	}
}
