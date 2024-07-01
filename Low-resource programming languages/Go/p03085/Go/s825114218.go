package main

import (
	"fmt"
)

func returnPair(s string) (p string) {
	switch s {
	case "A":
		p = "T"
	case "T":
		p = "A"
	case "C":
		p = "G"
	case "G":
		p = "C"
	}
	return
}

func main() {
	var s string
	fmt.Scan(&s)
	fmt.Println(returnPair(s))
}
