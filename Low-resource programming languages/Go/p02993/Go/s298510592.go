package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ans := "Good"
	for i := range s {
		if i >= 1 {
			if s[i-1] == s[i] {
				ans = "Bad"
			}
		}
	}
	fmt.Println(ans)
}
