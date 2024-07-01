package main

import "fmt"

func main() {
	var (
		s, t  string
		count int
	)
	fmt.Scan(&s, &t)
	for i := 0; i < len(s); i++ {
		if s[i:i+1] == t[i:i+1] {
			count++
		}
	}
	fmt.Println(count)
}
