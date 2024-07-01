package main

import (
	"fmt"
	"os"
)

func main() {
	var b string
	fp := os.Stdin

	fmt.Fscan(fp, &b)
	switch b {
	case "A":
		fmt.Println("T")
	case "C":
		fmt.Println("G")
	case "G":
		fmt.Println("C")
	case "T":
		fmt.Println("A")
	}
}