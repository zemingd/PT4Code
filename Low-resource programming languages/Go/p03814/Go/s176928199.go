package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	a := len(s) - 1
	z := 0
	for i, v := range s {
		if v == 'a' {
			if i < a {
				a = i
			}
		}
		if v == 'z' {
			z = i
		}
	}
	fmt.Println(z - a + 1)
}
