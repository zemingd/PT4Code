package main

import "fmt"

func main() {
	var n, x, t, a int
	fmt.Scan(&n, &x, &t)
	if n%x == 0 {
		a = (n / x) * t
	} else {
		a = (n/x + 1) * t
	}
	fmt.Printf("%d", a)

}
