package main

import (
	"fmt"
	//"math"
	//"strings"
)

func main() {
	var b string
	fmt.Scan(&b)
	switch b {
	case "A":
		fmt.Print("T")
	case "T":
		fmt.Print("A")
	case "G":
		fmt.Print("C")
	case "C":
		fmt.Print("G")
	}
}
