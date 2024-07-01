package main

import (
	"fmt"
)

func main() {
	var a string
	fmt.Scan(&a)
	count := 0
	for _, num := range a {
		if string(num) == "1" {
			count++
		} else {
			continue
		}
	}
	fmt.Println(count)
}
