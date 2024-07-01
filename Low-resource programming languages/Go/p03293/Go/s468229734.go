package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)

	for i := 0; i < len(s); i++ {
		first := s[0 : len(s)-1-i]
		second := s[len(s)-1-i:]
		tmp := second + first
		if tmp == t {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
