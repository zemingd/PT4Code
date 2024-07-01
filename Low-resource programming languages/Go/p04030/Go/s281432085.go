package main

import (
	"fmt"
)

func main() {
	var s string

	fmt.Scanln(&s)
	fmt.Println(logic(s))
}

func logic(s string) string {
	result := ""

	for _, c := range s {
		if string(c) == "B" {
			if len(result) > 0 {
				result = result[:len(result)-1]
			}
			continue
		}
		result += string(c)
	}
	return result
}
