package main

import (
	"fmt"
	"os"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	for c:=1; c<=3; c++ {
		tmp := a * b * c
		if tmp % 2 != 0 {
			fmt.Println("Yes")
			os.Exit(0)
		}
	}
	fmt.Println("No")
}