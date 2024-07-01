package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	k := n / 7
	for i := 0; i <= k; i++ {
		l := n - i*7
		if l%4 == 0 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
