package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	for i := range as {
		fmt.Scan(&as[i])
	}

	for _, a := range as {
		if a%2 == 1 {
			continue
		}
		if a%3 != 0 && a%5 != 0 {
			fmt.Println("DENIED")
			return
		}
	}
	fmt.Println("APPROVED")
}
