package main

import (
	"fmt"
)

func main() {
	var b string

	fmt.Scan(&b)

	switch b {
	case "A":
		fmt.Print("T")
	case "C":
		fmt.Print("G")
	case "G":
		fmt.Print("C")
	case "T":
		fmt.Print("A")
	}

}
