package main

import (
	"fmt"
)

func main() {
	var (
		d, c, x int
	)

	fmt.Scan(&d, &c, &x)

	if 0 <= (x-d) && (x-d) <= c {
		fmt.Println("YES")
	} else {
		fmt.Println("NO")
	}

}