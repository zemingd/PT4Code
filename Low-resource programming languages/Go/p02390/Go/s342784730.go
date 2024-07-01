package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)

	hour := s / 3600
	min := (s % 3600) / 60
	sec := s % 60
	fmt.Printf("%d:%d:%d\n", hour, min, sec)
}

