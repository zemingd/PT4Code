package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d\n", &N)

	var a bool = true
	for i := 0; i < N; i ++ {
		var A int
		fmt.Scanf("%d", &A)
		if A % 2 != 0 {
			continue
		}
		if A % 3 != 0 && A % 5  != 0 {
			a = false
			break
		}
	}
	if a {
		fmt.Println("APPROVED")
	} else {
		fmt.Println("DENIED")
	}
	
}