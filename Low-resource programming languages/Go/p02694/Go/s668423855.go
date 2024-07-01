package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	money := 100

	count := 1

	for {
		money += money / 100
		if n <= money {
			fmt.Println(count)
			break
		}
		count++
	}
}
