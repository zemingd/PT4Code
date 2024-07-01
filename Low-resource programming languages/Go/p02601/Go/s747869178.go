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

		if B > A && C > B {
			flag = 1
			break
		} else if B > C {
			C = C * 2
		} else if A > B {
			B = B * 2
		}
	}

	if B > A && C > B {
		flag = 1
	}

	if flag == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

}
