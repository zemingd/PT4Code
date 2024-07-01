package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	var s string
	fmt.Scan(&s)

	ss := strings.Split(s, "")
	for i, s := range ss {
		if i != k-1 {
			fmt.Print(s)
			continue
		}
		if s == "A" {
			fmt.Print("a")
			continue
		} else if s == "B" {
			fmt.Print("b")
			continue
		} else {
			fmt.Print("c")
			continue}
	}
}
