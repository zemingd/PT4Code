package main

import (
	"fmt"
)

func main() {
	var (
		s     string
		count int
	)

	fmt.Scan(&s)
	for i := 0; i < len(s); i++ {
		if s[i] == '1' {
			count++
		}
	}
	fmt.Println(count)

}
