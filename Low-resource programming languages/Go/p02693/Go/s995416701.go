package main

import "fmt"

func main() {
	var A, B, K int
	fmt.Scanf("%d", &K)
	fmt.Scanf("%d %d", &A, &B)

	if B-A < K-A%K {
		fmt.Println("NG")
	} else {
		fmt.Println("OK")
	}
}