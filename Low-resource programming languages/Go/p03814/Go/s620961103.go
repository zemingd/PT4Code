package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	len := len(s)
	var f, l int
	for i := 0; i < len-1; i++ {
		if s[i] == 'A' {
			f = i
			break
		}
	}
	for j := len - 1; j > 0; j-- {
		if s[j] == 'Z' {
			l = j
			break
		}
	}

	fmt.Println(l - f + 1)
}
