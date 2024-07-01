package main

import "fmt"

func main() {
	var (
		n int
		s string
	)
	
	_, _ = fmt.Scan(&n, &s)
	
	answer := 1
	
	for i := 1; i < len(s); i++ {
		if s[i] != s[i-1] {
			answer++
		}
	}
	
	fmt.Println(answer)
}
