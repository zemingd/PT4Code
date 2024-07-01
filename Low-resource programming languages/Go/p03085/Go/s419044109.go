package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)
	switch {
	case n == "A":
		fmt.Println("T")
	case n == "T":
		fmt.Println("A")
	case n == "G":
		fmt.Println("C")
	default:
		fmt.Println("G")
	}
}
