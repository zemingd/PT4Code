package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	if n/100 == 7 || (n/10)%10 == 7 || n%10 == 7 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
