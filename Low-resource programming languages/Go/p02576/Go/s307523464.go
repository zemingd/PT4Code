package main

import (
	"fmt"
)

func main() {
	var n,x,t int
	fmt.Scanf("%d %d", &n, &x, &t)
	fmt.Printf("%d %s\n", (n+x-1)/x * t)
}