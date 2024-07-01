package main

import (
	"fmt"
)

func main() {

	var n int
	fmt.Scan(&n)
	if n%1000 == 0 {
		fmt.Println(0)
	} else {
		fmt.Println(1000 - int(n%1000))
	}
}
