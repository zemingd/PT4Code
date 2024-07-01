package main

import "fmt"

func main() {
	var s, t string

	fmt.Scan(&s)
	fmt.Scan(&t)

	fmt.Println(solve(s, t))
}

func solve(s, t string) int {
	c := 0
	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			c++
		}
	}

	return c
}
