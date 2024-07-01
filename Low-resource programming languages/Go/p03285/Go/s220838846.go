package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	for i := 0; i <= n; i += 7 {
		if (n-i)%4 == 0 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
