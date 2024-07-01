package main

import (
	"fmt"
)

func main() {
	var a, b, c int64

	fmt.Scanf("%d %d %d\n", &a, &b, &c)

	d := c - a - b
	if d < 0 {
		fmt.Println("No")
		return
	}

	if 4*a*b < d*d {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
