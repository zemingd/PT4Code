package main

import (
	"fmt"
)

func main() {
	var K, X int
	fmt.Scanf("%d %d\n", &K, &X)
	if 500*K >= X {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
