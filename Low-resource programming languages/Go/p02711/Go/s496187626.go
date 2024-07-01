package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	for _, v := range s {
		if v == '7' {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
