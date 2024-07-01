package main

import (
	"fmt"
)

func main() {
	var a, b, t int
	fmt.Scanf("%d %d %d", &a, &b, &t)
	fmt.Printf("%d", t/a*b)
}
