package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d\n", &N)

	ok := false
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			if j*i == N {
				ok = true
				break
			}
		}
	}
	if ok {
		fmt.Println("Yes")

	} else {
		fmt.Println("No")

	}
}
