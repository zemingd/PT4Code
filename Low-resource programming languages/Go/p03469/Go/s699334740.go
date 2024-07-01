package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	s2 := s[0:3] + "8" + s[4:]
	fmt.Println(s2)
}
