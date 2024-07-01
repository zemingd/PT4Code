package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var a, z int
	var A bool
	for i := 0; i < len(s); i++ {
		if s[i] == 'A' && !A {
			a = i
			A = true
		}
		if s[i] == 'Z' {
			z = i
		}
	}
	fmt.Println(z - a + 1)
}
