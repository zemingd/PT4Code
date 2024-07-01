package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	h := s / 60 / 60
	m := (s / 60) % 60
	s = s % 60

	fmt.Printf("%d:%d:%d\n", h, m, s)
}
