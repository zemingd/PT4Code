package main

import (
	"fmt"
)

func main() {
	var n int
	var s string
	fmt.Scanf("%d\n%s", &n, &s)
	answer := rgb(n, s)
	fmt.Println(answer)
}

func rgb(n int, s string) int {
	var r, g, b int
	for i := 0; i < n; i++ {
		switch s[i] {
		case 'R':
			r++
		case 'G':
			g++
		case 'B':
			b++
		}
	}
	maxSkip := (n - 1) / 2
	cntToExclude := 0
	for i := 1; i <= maxSkip; i++ {
		for j := 0; j+2*i < n; j++ {
			if s[j] != s[j+i] && s[j] != s[j+2*i] && s[j+i] != s[j+2*i] {
				cntToExclude++
			}
		}
	}
	return r*g*b - cntToExclude
}
