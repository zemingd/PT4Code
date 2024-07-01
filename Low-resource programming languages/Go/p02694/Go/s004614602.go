package main

import (
	"fmt"
)

func main() {

	var X int
	fmt.Scan(&X)

	deposit := 100
	count := 0
	for {
		count++
		deposit = deposit + deposit/100
		if deposit >= X {
			break
		}
	}

	fmt.Println(count)
}
