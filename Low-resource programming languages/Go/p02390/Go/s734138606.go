package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	H := s / 3600
	M := (s % 3600) / 60
	S := s % 60
	fmt.Printf("%d:%d:%d\n", H, M, S)
}

