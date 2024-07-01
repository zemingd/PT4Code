package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	arr := make([]bool, 26)
	for _, char := range s {
		arr[char-97] = true
	}
	result := "None"
	for i, b := range arr {
		if !b {
			result = string(i + 97)
			break
		}
	}
	fmt.Println(result)
}
