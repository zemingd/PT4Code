package main

import (
	"fmt"
)

func main() {
	var t, pdmax string
	fmt.Scanf("%s", &t)

	for _, r := range t {
		if r == '?' {
			pdmax += "D"
		} else {
			pdmax += string(r)
		}
	}

	fmt.Printf("%s\n", pdmax)
}
