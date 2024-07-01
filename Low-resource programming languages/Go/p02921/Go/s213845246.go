package main

import "fmt"

func main() {
	var s, t string
	fmt.Scan(&s, &t)
	var c int
	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			c++
		}
	}
	fmt.Println(c)
}
