package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	var s, t string
	fmt.Scan(&s, &t)

	for i := 0; i < n; i++ {
		fmt.Printf("%s%s", s[i], t[i])
	}
	fmt.Println()
}
