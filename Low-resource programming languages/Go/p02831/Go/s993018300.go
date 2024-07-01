package main

import (
	"fmt"
)

func main() {
	var A, B int
	fmt.Scan(&A, &B)

	inc := B
	if A > B {
		inc = A
	}
	ans := 0
	for i := inc; i <= A*B; i += inc {
		if i%A == 0 && i%B == 0 {
			ans = i
			break
		}
	}
	fmt.Println(ans)
}
