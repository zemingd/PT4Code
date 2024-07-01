package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var s, t string

	fmt.Scan(&s, &t)

	for i := 0; i < n; i++ {

		fmt.Printf("%c%c", s[i], t[i])
	}
	fmt.Printf("\n")
}