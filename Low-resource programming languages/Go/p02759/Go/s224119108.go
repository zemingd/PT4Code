package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	fmt.Printf("%d\n", n/2+n%2)
}
