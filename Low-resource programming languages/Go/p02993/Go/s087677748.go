package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	for i := 1; i < len(s); i++ {
		if s[i-1] == s[i] {
			fmt.Println("Bad")
			return
		}
	}
	fmt.Println("Good")
}
