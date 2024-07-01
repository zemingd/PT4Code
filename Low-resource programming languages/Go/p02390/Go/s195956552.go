package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	sec := s % 60
	m := (s / 60) % 60
	h := (s / 60 / 60)
	
	fmt.Printf("%d:%d:%d\n", h, m, sec)
}

