package main

import "fmt"

func main() {
	var n, r int
	fmt.Scan(&n, &r)

	if n >= 10 {
		fmt.Println(r)
	} else {
		x := 100 * (10 - n)
		fmt.Println(r + x)
	}
}
