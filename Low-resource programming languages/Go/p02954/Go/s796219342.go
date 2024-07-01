package main

import (
	"fmt"
)

func max(x, y int) int {
	if x > y {
		return x
	}
	return y
}

func main() {
	var s string
	fmt.Scan(&s)
	l := len(s)
	r := make([]int, l)
	for i := 0; i < l-1; i++ {
		if s[i] == 'R' && s[i+1] == 'L' {
			for j := i; j >= 0; j-- {
				if s[j] != 'R' {
					break
				}
				if (j-i)%2 == 0 {
					r[i]++
				} else {
					r[i+1]++
				}
			}
			for j := i + 1; j < l; j++ {
				if s[j] != 'L' {
					break
				}
				if (j-i)%2 == 0 {
					r[i]++
				} else {
					r[i+1]++
				}
			}
		}
	}
	for i := 0; i < l; i++ {
		if i == 0 {
			fmt.Printf("%d", r[i])
		} else {
			fmt.Printf(" %d", r[i])
		}
	}
	fmt.Println("")
}
