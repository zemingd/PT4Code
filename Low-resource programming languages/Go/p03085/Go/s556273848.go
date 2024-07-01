package main

import "fmt"

func main() {
	var base string
	fmt.Scanf("%s", &base)
	switch base {
	case "A":
		fmt.Println("T")
	case "T":
		fmt.Println("A")
	case "C":
		fmt.Println("G")
	case "G":
		fmt.Println("C")
	}
}