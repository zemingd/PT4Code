package main

import (
	"fmt"
)

func main() {

	var A, B, K int64
	fmt.Scan(&A, &B, &K)

	if (K<A) {
		A -= K
	} else if (K<A+B) {
		B = B-(K - A)
		A = 0
	} else {
		A = 0
		B = 0
	}

	fmt.Println(A, B)

}
