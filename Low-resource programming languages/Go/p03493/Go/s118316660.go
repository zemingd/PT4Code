package main

import (
	"fmt"
)

func main() {
	var (
		s string
		count = 0
	)
	fmt.Scan(&s)

	for i := 0; i < len(s); i++ {
		if s[i] == '1' {
			count++
		}
	}

	fmt.Println(count)
}



