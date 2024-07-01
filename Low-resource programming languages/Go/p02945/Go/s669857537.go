package main

import "fmt"

func main() {
	var a int
	var b int
	fmt.Scanf("%d %d", &a, &b)
	x := a + b
	y := a - b
	z := a * b

	if x > y {
		if x > z {
			fmt.Printf("%d", x)
		} else {
			fmt.Printf("%d", z)
		}
	} else {
		if z > y {
			fmt.Printf("%d", z)
		} else {
			fmt.Printf("%d", y)
		}
	}
}
