package main

import "fmt"

func main() {
	var n string
	fmt.Scan(&n)

	switch n {
	case "RRR":
		fmt.Println(3)
	case "RRS", "SRR":
		fmt.Println(2)
	case "SSS":
		fmt.Println(0)
	default:
		fmt.Println(1)
	}
}
