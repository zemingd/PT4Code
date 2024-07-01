package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	n := len(s)
	for i := 0; i < n/2; i++ {
		if s[i] != s[n-i-1] ||
			s[i] != s[(n-1)/2-1-i] ||
			s[n-i-1] != s[(n+3)/2-1+i] {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
}
