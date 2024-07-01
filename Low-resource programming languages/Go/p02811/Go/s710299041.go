package main

import (
	"fmt"
)

func main() {
	var K, X int
	fmt.Scanf("%d %d", &K, &X)

	if X <= 500*K {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
