package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	count := 0
	for i, v := range s {
		if i == 0 {
			if v != 'A' {
				fmt.Println("WA")
				return
			}
		} else if 2 <= i && i <= len(s)-2 {
			if v == 'C' {
				count++
			} else if v < 'a' || 'z' < v {
				fmt.Println("WA")
				return
			}
		} else if v < 'a' || 'z' < v {
			fmt.Println("WA")
			return
		}
	}
	if count == 1 {
		fmt.Println("AC")
		return
	}
	fmt.Println("WA")
}
