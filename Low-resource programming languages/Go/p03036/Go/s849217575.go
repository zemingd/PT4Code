package main

import (
	"fmt"
)

func main() {
	r := 0
	d := 0
	x := 0

	fmt.Scanf("%d %d %d", &r, &d, &x)

	for i := 0; i < 10; i++ {
		x = (r * x) - d
		fmt.Printf("%d\n", x)
	}
}
