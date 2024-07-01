package main

import "fmt"

func main() {
	var h int
	var m int
	var s int
	fmt.Scan(&s)
	h = s / 3600
	m = (s % 3600) / 60
	s = (s % 3600) % 60
	fmt.Print(h)
	fmt.Print(":")
	fmt.Print(m)
	fmt.Print(":")
	fmt.Println(s)

}

