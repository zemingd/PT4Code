package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int
	fmt.Scanf("%1d%1d%1d%1d", &a, &b, &c, &d)

	switch {
	case a+b+c+d == 7:
		fmt.Printf("%d+%d+%d+%d=7", a, b, c, d)
	case a+b+c-d == 7:
		fmt.Printf("%d+%d+%d-%d=7", a, b, c, d)
	case a+b-c+d == 7:
		fmt.Printf("%d+%d-%d+%d=7", a, b, c, d)
	case a+b-c-d == 7:
		fmt.Printf("%d+%d-%d-%d=7", a, b, c, d)
	case a-b+c+d == 7:
		fmt.Printf("%d-%d+%d+%d=7", a, b, c, d)
	case a-b+c-d == 7:
		fmt.Printf("%d-%d+%d-%d=7", a, b, c, d)
	case a-b-c+d == 7:
		fmt.Printf("%d-%d-%d+%d=7", a, b, c, d)
	case a-b-c-d == 7:
		fmt.Printf("%d-%d-%d-%d=7", a, b, c, d)
	}
	fmt.Println("")
}
