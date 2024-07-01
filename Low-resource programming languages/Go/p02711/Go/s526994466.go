package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	flag := 0
	if N/100 != 7 {
		N = N % 100
		if N/10 != 7 {
			N = N % 10
			if N != 7 {
				fmt.Println("No")
				flag = 1
			}
		}
	}

	if flag == 0 {
		fmt.Println("Yes")
	}
}
