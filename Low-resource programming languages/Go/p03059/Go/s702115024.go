package main

import (
	"fmt"
)

func main() {
	var (
		A, B int
		T    float64
	)
	fmt.Scanf("%d %d %f\n", &A, &B, &T)
	T += 0.5
	ans := int(T/float64(A)) * B
	fmt.Println(ans)
}
