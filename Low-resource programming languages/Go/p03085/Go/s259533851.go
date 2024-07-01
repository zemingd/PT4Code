package main

import "fmt"

func main() {
	b := SingleStr()

	switch b {
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

func SingleStr() string {
	var s string
	fmt.Scan(&s)
	return s
}
