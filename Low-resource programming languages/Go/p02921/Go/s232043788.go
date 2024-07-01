package main

import "fmt"

func main() {
	var s, t string
	_, _ = fmt.Scan(&s, &t)
	
	answer := 0
	
	for i := 0; i < 3; i++ {
		if s[i] == t[i] {
			answer++
		}
	}
	
	fmt.Println(answer)
}
