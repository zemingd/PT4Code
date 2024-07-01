package main

import (
	"fmt"
)

func main() {
	var b string
	fmt.Scan(&b)

	var a [4]byte

	for i, v := range b {
		if v == 'A' {
			a[i] = 'T'
		} else if v == 'T' {
			a[i] = 'A'
		} else if v == 'C' {
			a[i] = 'G'
		} else if v == 'G' {
			a[i] = 'C'
		}
	}
	fmt.Println(string(a[:]))
}
