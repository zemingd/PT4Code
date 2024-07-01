package main

import "fmt"

func main() {
	var (
		s string
		t string
	)

	fmt.Scan(&s, &t)

	count := 0
	for i := 0; i < len(s); i++ {
		if s[i:i+1] == t[i:i+1] {
			count++

		}
	}
	fmt.Println(count)
}
