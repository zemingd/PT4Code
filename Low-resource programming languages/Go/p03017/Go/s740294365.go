package main

import (
	"fmt"
	"strings"
)

func main() {
	var N, A, B, C, D int
	fmt.Scan(&N, &A, &B, &C, &D)
	var S string
	fmt.Scan(&S)

	s1 := S[A-1 : D-1]
	if strings.Contains(s1, "##") {
		fmt.Println("No")
		return
	}
	if C > D {
		s2 := S[B-2 : D]
		if !strings.Contains(s2, "...") {
			fmt.Println("No")
			return
		}
	}
	fmt.Println("Yes")
}
