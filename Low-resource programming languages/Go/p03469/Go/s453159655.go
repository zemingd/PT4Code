package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	answer := s[:3] + "8" + s[4:]
	fmt.Println(answer)
}
