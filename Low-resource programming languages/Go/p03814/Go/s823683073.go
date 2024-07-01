package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	a := len(s) - 1
	z := 0
	for i, v := range s {
		if v == 'A' {
			if i < a {
				a = i
			}
		}
		if v == 'Z' {
			z = i
		}
	}
	fmt.Println(z - a + 1)
}
