package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)
	ans := "Good"
	if s[0] == s[1] || s[1] == s[2] || s[2] == s[3] {
		ans = "Bad"
	}
	fmt.Println(ans)
}
