package main

import (
	"fmt"
)

func main() {

	n := 0
	r := 0
	fmt.Scan(&n)
	fmt.Scan(&r)

	if n >= 10 {
		fmt.Println(r)
		return
	}
	fmt.Println(r + 100*(10-n))
}
