package main

import (
	"fmt"
)

func main() {
	var P, Q, R int
	fmt.Scan(&P)
	fmt.Scan(&Q)
	fmt.Scan(&R)

	min := P + Q
	
	if min > Q + R { 
		min = Q + R
	}
	if min > R + P {
		min = R + P
	}
	
	fmt.Println(min)
}