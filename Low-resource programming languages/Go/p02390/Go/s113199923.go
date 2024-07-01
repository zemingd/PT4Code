package main

import "fmt"

func main() {
	var s int
	fmt.Scan(&s)
	var h int = s / 3600
	s -= h * 3600
	var m int = s / 60
	s -= m * 60
	fmt.Print(h)
	fmt.Print(":")
	fmt.Print(m)
	fmt.Print(":")
	fmt.Println(s)
}
