package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	result := "No"

	if n == m {
		result = "Yes"
	}

	fmt.Println(result)
}
