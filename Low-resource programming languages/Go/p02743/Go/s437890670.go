package main

import (
	"fmt"
)

func main() {
	var a, b, c int64
	fmt.Scanf("%d %d %d", &a, &b, &c)
	if c*c-2*c*(a+b)+(a-b)*(a-b) > 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
