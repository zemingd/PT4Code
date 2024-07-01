package main

import (
	"fmt"
)

func main() {
	var s string
	fmt.Scan(&s)
	
	a,z := len(s),0
	for i,v :=range s {
		if v == 'A' && i < a {
			a = i
		}
		if v == 'Z' && i > z {
			z = i
		}
	}
	fmt.Println(z - a + 1)
}