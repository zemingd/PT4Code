package main

import "fmt"

func main() {
	var n, x, t, a int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &x)
	fmt.Scanf("%d", &t)
	if n%x == 0 {
		a = (n % x) * t
	} else {
		a = (n%x + 1) * t
	}
	fmt.Printf("%d", a)
}
