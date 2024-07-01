package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	var r, b int
	for _, c := range s {
		if c == '0' {
			b++
		} else {
			r++
		}
	}
	min := r
	if min > b {
		min = b
	}
	fmt.Println(min * 2)
}
