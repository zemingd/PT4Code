package main

import (
	"fmt"
)

func main() {
	var month int
	var day int
	fmt.Scanf("%d %d", &month, &day)

	if day < month {
		fmt.Printf("%d", month-1)
	} else {
		fmt.Printf("%d", month)
	}
}
