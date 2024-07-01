package main

import (
	"fmt"
)

func main() {
	var ab, bc, ca int
	fmt.Scanf("%d %d %d", &ab, &bc, &ca)

	res := 0
	if ab < bc {
		if bc < ca {
			res += ab + bc
		} else {
			res += ab + ca
		}
	} else {
		if ab < ca {
			res += bc + ab
		} else {
			res += bc + ca
		}
	}

	fmt.Print(res)
}
