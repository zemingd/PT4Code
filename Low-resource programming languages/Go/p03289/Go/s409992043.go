package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)

	iA := strings.Index(s, "A")
	iC := strings.Index(s, "C")

	ns := strings.Replace(s, "A", "a", 1)
	ns = strings.Replace(ns, "C", "c", 1)

	if iA == 0 && iC > 1 && iC < len(s)-1 && ns == strings.ToLower(s) {
		fmt.Println("AC")
	} else {
		fmt.Println("WA")
	}
}
