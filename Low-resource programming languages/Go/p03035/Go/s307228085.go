package main

import "fmt"

func main() {
	var A, B int
	fmt.Scanf("%d", &A)
	fmt.Scanf("%d", &B)

	var cost int
	if A >= 13 {
		cost = B
	} else if A <= 12 && A >= 6 {
		cost = B / 2
	} else {
		cost = 0
	}

	fmt.Printf("%d\n", cost)

}
