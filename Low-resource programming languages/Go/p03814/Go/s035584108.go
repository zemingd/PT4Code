package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	len := len(s)
	var f, l int
	for i := 0; i < len; i++ {
		if s[i] == 'A' {
			f = i
		}
		if s[len-i-1] == 'Z' {
			l = len - i - 1
		}
		if f != 0 && l != 0 {
			break
		}
	}
	fmt.Println(l - f + 1)
}
