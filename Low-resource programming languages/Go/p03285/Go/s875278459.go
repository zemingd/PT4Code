package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)
	result := "No"

	for i := 0; i <= 100; i++ {
		for j := 0; j <= 100; j++ {
			value := 4*i + 7*j
			if value == a {
				result = "Yes"
			}
		}
	}
	fmt.Println(result)
}
