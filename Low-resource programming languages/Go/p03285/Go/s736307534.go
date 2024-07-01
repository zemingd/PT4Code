package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	for a := 0; ; a++ {
		rest := n - 4*a
		if rest < 0 {
			fmt.Println("No")
			return
		}
		if rest%7 == 0 {
			fmt.Println("Yes")
			return
		}
	}
}
