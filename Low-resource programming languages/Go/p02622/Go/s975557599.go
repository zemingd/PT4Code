package main

import "fmt"

func main() {
	var s, t string
	fmt.Scanf("%s", &s)
	fmt.Scanf("%s", &t)
	var c int
	for i := 0; i < len(s); i++ {
		if s[i] != t[i] {
			c++
		}
	}
	fmt.Printf("%d", c)
}
