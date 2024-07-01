package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	//
	if n >= 13 {
		fmt.Println(m)
	} else if n >= 6 {
		fmt.Println(m / 2)
	} else {
		fmt.Println(0)
	}
}
