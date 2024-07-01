package main

import (
	f "fmt"
)

func main() {
	var n, x, t int
	f.Scan(&n, &x, &t)

	m := n % x
	if m == 0 {
		ans := n / x * t
		f.Println(ans)
	} else {
		ans := (n/x + 1) * t
		f.Println(ans)
	}
}
