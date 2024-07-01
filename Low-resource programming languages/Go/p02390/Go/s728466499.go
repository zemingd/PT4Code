package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	hours := s / 3600
	minutes := (s % 3600) / 60
	seconds := (s % 3600) % 60
	fmt.Printf("%d:%d:%d\n", hours, minutes, seconds)
}
