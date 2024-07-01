package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	var count int
	for _, v := range s {
		if v == '1' {
			count++
		}
	}
	fmt.Println(count)
}
