package main

import "fmt"

func main() {
	var h, a int
	fmt.Scanf("%d", &h)
	fmt.Scanf("%d", &a)
	fmt.Print((h-1)/a + 1)
}
