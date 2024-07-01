package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	l := 0
	for i, c := range s {
		if c == 'A' {
			l = i
			break
		}
	}
	r := len(s) - 1
	for i := len(s) - 1; i >= 0; i-- {
		if s[i] == 'Z' {
			r = i
			break
		}
	}
	fmt.Println(r - l + 1)
}
