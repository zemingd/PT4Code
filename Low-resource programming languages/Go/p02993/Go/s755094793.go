package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	for i := 0; i < len(s)-1; i++ {
		f := s[i:i+1]
		s := s[i+1:i+2]
		if f == s {
			fmt.Println("Bad")
			return
		}
	}
	fmt.Println("Good")
}
