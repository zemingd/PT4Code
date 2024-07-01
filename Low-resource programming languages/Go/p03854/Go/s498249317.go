package main

import (
	"fmt"
	"strings"
)

func main() {
	var (
		s string
	)
	fmt.Scan(&s)
	s = strings.Replace(s, "dream", "D", -1)
	s = strings.Replace(s, "erase", "E", -1)
	s = strings.Replace(s, "Der", "", -1)
	s = strings.Replace(s, "Er", "", -1)
	s = strings.Replace(s, "D", "", -1)
	s = strings.Replace(s, "E", "", -1)
	s = strings.TrimSpace(s)
	if s == "" {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
