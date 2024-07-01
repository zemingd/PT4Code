package main

import (
	"fmt"
)

func main() {
	var P int
	var Q int
	var R int
	fmt.Scan(&P)
	fmt.Scan(&Q)
	fmt.Scan(&R)

	if P <= R {
		if Q <= R {
			fmt.Println(P + Q)
		} else if Q > R {
			fmt.Println(P + R)
		}
	}
	if P > R {
		fmt.Println(Q + R)
	}
}