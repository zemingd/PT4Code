package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scanf("%d %d", &a, &p)
	c := (3*a + p) / 2
	fmt.Printf("%d", c)
}
