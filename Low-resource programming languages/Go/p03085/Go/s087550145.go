package main

import (
	"fmt"
)

func main() {
	var v byte
	fmt.Scan(&v)

	var a byte

	if v == 'A' {
		a = 'T'
	} else if v == 'T' {
		a = 'A'
	} else if v == 'C' {
		a = 'G'
	} else if v == 'G' {
		a = 'C'
	}
	fmt.Println(string(a))
}
