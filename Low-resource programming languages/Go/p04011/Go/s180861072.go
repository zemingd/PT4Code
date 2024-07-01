package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int64
	fmt.Scan(&a, &b, &c, &d)

	if a <= b {
		fmt.Println(a * c)
		return
	}

	fmt.Println(a*c + d*(a-b))

}
