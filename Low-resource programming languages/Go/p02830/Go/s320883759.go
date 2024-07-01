package main

import (
		"fmt"
)

func main() {
		var n int
		var s, t string
		fmt.Scan(&n, &s, &t)

		var r string

		for i := 0; i < n; i++ {
				r += string(s[i])
				r += string(t[i])
		}

		fmt.Println(r)
}
