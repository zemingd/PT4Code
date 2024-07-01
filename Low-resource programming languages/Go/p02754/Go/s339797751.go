package main

import "fmt"

func main() {
	var n, a, b int
	fmt.Scanf("%d %d %d", &n, &a, &b)
	k := n / (a + b)
	l := n % (a + b)
	blue := k * a
	if l >= a {
		blue += a
	} else {
		blue += l
	}
	fmt.Println(blue)
}
