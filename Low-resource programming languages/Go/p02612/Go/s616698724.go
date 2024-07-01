package main

import (
	"fmt"
)

func main() {
	//fmt.Println("Hello World")

	var n int
	fmt.Scanf("%d", &n)
	ans := 1000 - (n % 1000)
	if ans == 1000 {
		ans = 0
	}
	fmt.Println(ans)
}
