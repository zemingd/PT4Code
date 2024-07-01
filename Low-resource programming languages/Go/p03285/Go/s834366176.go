package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	var fourNum int
	for {
		rest := n - fourNum*4
		if rest < 7 {
			fmt.Println("No")
			return
		}
		if rest%7 == 0 {
			fmt.Println("Yes")
			return
		}
		fourNum++
	}
}
