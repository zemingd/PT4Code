package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Printf("2018%s\n", s[4:])
}
