package main

import "fmt"

func main() {
	// Code for B - Cakes and Donuts
	var N int
	fmt.Scanf("%d", &N)

	var flag int = 0
	for i := 0; i <= 25; i++ {
		for j := 0; j <= 14; j++ {
			if N == 4*i+7*j {
				flag = 1
				break
			}
		}
	}

	if flag == 1 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
