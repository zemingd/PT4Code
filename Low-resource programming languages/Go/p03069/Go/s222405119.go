package main

import "fmt"

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	cw := 0
	ans := 0
	for i := n - 1; i >= 0; i-- {
		if s[i] == '.' {
			cw++
		} else {
			ans += cw
			cw = 0
		}
	}
	fmt.Println(ans)
}
