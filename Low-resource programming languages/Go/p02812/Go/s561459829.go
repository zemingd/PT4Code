package main

import "fmt"

func main() {
	var n int
	var s string
	fmt.Scan(&n, &s)

	ans := 0
	c := byte('A')
	for i := 0; i < n; i++ {
		if s[i] == c {
			c++
		} else {
			c = 'A'
		}
		if c == 'D' {
			c = 'A'
			ans++
		}
	}
	fmt.Println(ans)
}
