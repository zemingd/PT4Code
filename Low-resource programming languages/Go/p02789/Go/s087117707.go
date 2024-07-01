package main

import (
	"fmt"
)

func main() {
	var (
		n, m int
		s    string
	)
	fmt.Scanf("%d %d", &n, &m)
	if n == m {
		s = "Yes"
	} else {
		s = "No"
	}
	fmt.Printf("%s\n", s)
}
