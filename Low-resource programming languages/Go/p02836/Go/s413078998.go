package main

import "fmt"

func main() {
	var s string
	fmt.Scan(&s)

	ans := 0
	n := len(s)
	for i := 0; i < n/2; i++ {
		if s[i] != s[n-i-1] {
			ans++
		}
	}
	fmt.Println(ans)
}
