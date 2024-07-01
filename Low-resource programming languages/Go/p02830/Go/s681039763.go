package main

import (
	"fmt"
)

func main() {
	var n int
	var s, t string

	fmt.Scan(&n)
	fmt.Scan(&s, &t)

	ans := ""
	for i := 0; i < n; i++ {
		ans += string(s[i])
		ans += string(t[i])
	}

	fmt.Println(ans)
}
