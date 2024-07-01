package main

import (
	"fmt"
)

func main() {
	var n, x, t int
	fmt.Scanf("%d %d %d", &n, &x, &t)
	var a int
	a = (n-1)/x + 1
	fmt.Println(a * t)
}
