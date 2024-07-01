package main

import "fmt"

func main() {
	var x, y int
	fmt.Scanf("%d %d", &x, &y)

	add := x + y
	sub := x - y
	mul := x * y

	if add > sub {
		if add > mul {
			fmt.Printf("%d\n", add)
		} else {
			fmt.Printf("%d\n", mul)
		}
	} else {
		if sub > mul {
			fmt.Printf("%d\n", sub)
		} else {
			fmt.Printf("%d\n", mul)
		}
	}
}
