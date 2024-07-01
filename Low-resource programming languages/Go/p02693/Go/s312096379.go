package main

import (
	"fmt"
)

func main() {

	var K, A, B int
	fmt.Scanf("%d", &K)
	fmt.Scanf("%d %d", &A, &B)

	flag := 0
	for i := A; i <= B; i++ {
		if i%K == 0 {
			flag = 1
			break
		}
	}

	if flag == 1 {
		fmt.Println("OK")
	} else {
		fmt.Println("NG")
	}
}
