package main

import (
	"fmt"
)

func main() {
	var n, m int

	fmt.Scan(&n, &m)
	if m == n {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
