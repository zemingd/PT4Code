package main

import "fmt"

func main() {
	var s int

	fmt.Scan(&s)

	h := s / 3600
	s -= h * 3600
	m := s / 60
	s -= m * 60
	fmt.Printf("%d:%d:%d\n", h, m, s)
}

