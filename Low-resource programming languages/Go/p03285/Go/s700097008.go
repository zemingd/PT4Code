package main

import "fmt"

func main() {
	// Code for B - Cakes and Donuts
	var N int
	fmt.Scanf("%d", &N)
	if (N%7)%4 == 0 || (N%4)%7 == 0 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
