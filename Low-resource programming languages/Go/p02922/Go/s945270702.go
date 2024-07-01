package main

import (
	"fmt"
)

func main() {
	var a,b int
	fmt.Scan(&a,&b)

	plags := 1
	count := 0
	for {
		if plags >= b {
			break
		}
		plags += a - 1
		count++
	}
	fmt.Println(count)
}