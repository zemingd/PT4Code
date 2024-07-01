package main

import (
	"fmt"
)

func main() {
	const C int = 500
	var K, X int
	fmt.Scanf("%d %d\n", &K, &X)
	if K*C >= X {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
