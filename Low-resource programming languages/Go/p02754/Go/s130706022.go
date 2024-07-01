package main

import (
	"fmt"
)

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)

	c := n / (a + b)
	d := n % (a + b)
	if d <= a {
		fmt.Println(c*a + d)
	} else {
		fmt.Println(c*a + a)
	}

}
