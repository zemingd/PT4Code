package main

import (
	"fmt"
	"strings"
)

func Solve(s string) int {
	n := strings.Count(s, "#.")
	return n
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	var s string
	fmt.Scanf("%s", &s)
	result := Solve(s)
	fmt.Println(result)
}
