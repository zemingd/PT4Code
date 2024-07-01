package main

import (
	"fmt"
	"strings"
)

func include7(a []string) bool {
	for _, v := range a {
		if v == "7" {
			return true
		}
	}
	return false
}

func main() {
	var n string

	fmt.Scan(&n)
	s := strings.Split(n, "")

	if include7(s) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
