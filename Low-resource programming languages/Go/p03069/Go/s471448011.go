package main

import (
	"fmt"
)

func Solve(s string) int {
	b := []byte(s)
	var n1 int
	for i := 0; i < len(b); i++ {
		if i+1 < len(b) {
			if b[i] == '#' && b[i+1] == '.' {
				b[i+1] = '#'
				n1++
			}
		}
	}
	var n2 int
	b = []byte(s)
	for i := len(b) - 1; i >= 0; i-- {
		if i-1 >= 0 {
			if b[i] == '.' && b[i-1] == '#' {
				b[i-1] = '.'
				n2++
			}
		}
	}
	if n1 < n2 {
		return n1
	}
	return n2
}

func main() {
	var n int
	fmt.Scanf("%d", &n)
	var s string
	fmt.Scanf("%s", &s)
	result := Solve(s)
	fmt.Println(result)
}
