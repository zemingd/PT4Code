package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	answer := 0
	for i := range s {
		if s[i] == '1' {
			answer++
		}
	}
	fmt.Println(answer)
}
