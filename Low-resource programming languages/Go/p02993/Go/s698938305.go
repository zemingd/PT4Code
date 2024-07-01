package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)

	for i, v := range s {
		if i == len(s)-1 {
			break
		}
		if string(s[i+1]) == string(v) {
			fmt.Println("Bad")
			return
		}
	}
	fmt.Println("Good")
}
