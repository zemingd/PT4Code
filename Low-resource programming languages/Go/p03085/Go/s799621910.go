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
	case n == "C":
		fmt.Println("G")
	case n == "G":
		fmt.Println("C")
	}
}
