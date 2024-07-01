package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	B := make([]int, N-1)
	for i := 0; i < N-1; i++ {
		fmt.Scanf("%d", &B[i])
	}
	var sum int = 0
	var flag int = 0
	for i := 0; i < N-1; i++ {
		if flag == 0 {
			sum += B[i]
		} else {
			flag = 0
		}

		if i < N-2 && B[i] <= B[i+1] {
			sum += B[i]
			flag = 1
		}
	}

	if flag == 0 {
		sum += B[N-2]
	}

	fmt.Println(sum)
}
