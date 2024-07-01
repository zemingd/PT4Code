package main

import "fmt"

func main() {
	var P, Q, R int
	fmt.Scan(&P, &Q, &R)

	a := P + Q
	b := Q + R
	if a < b {
		fmt.Println(a)
	} else {
		fmt.Println(b)
	}
}
