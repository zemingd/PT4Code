package main

import (
	"fmt"
)

func main() {
	var K, A, B int
	fmt.Scanf("%d", &K)
	fmt.Scanf("%d %d", &A, &B)

	base := A / K
	if A%K > 0 {
		base += 1
	}

	if base*K <= B {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}
