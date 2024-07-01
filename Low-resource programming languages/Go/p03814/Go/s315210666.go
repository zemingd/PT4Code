package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	i, j := 0, 0

	for k := range s {
		if s[k] == 'A' {
			i = k
			break
		}
	}

	for k := range s {
		if s[k] == 'Z' {
			j = k
		}
	}

	fmt.Println(j - i + 1)
}
