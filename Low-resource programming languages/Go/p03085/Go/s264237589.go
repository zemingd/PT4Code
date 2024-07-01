package main

import "fmt"

func main() {
	var b string

	fmt.Scan(&b)

	switch b {
	case "A":
		println("T")
	case "T":
		println("A")
	case "C":
		println("G")
	case "G":
		println("C")
	}
}
