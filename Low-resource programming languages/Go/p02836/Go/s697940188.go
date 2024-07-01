package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	var count int
	for i := 0; i < len(s)/2; i++ {
		if s[i] != s[len(s)-1-i] {
			count++
		}
	}
	fmt.Println(count)
}
