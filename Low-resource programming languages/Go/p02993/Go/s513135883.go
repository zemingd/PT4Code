package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	f := s[0]
	for i := 1; i < 4; i++ {
		if f == s[i] {
			fmt.Println("Bad")
			return
		}
		f = s[i]
	}
	fmt.Println("Good")
}
