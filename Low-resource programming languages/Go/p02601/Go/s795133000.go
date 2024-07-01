package main

import (
	"fmt"
)

func main() {

	var A, B, C, K int
	fmt.Scanf("%d %d %d", &A, &B, &C)
	fmt.Scanf("%d", &K)

	var flag int = 0
	for i := 0; i < K; i++ {
		if A >= B {
			B = B * 2
		} else {
			C = C * 2
		}

		if B > A && C > B {
			flag = 1
			break
		}
	}

	if flag == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
