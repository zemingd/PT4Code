package main

import (
	"fmt"
)

func main() {
	var len int = 0
	fmt.Scan(&len)
	ints := make([]int, len)
	for i := range ints {
		fmt.Scan(&ints[i])
	}
	status := "DENIED"
	exists := false

	for _, i := range ints {
		if i%2 == 0 {
			exists = true
			break
		}
	}
	if !exists {
		fmt.Println("APPROVED")
		return
	}

	for _, i := range ints {
		if i%2 == 0 {
			if i%3 == 0 || i%5 == 0 {
				status = "APPROVED"
			} else {
				status = "DENIED"
				break
			}
		}
	}

	fmt.Println(status)
}
