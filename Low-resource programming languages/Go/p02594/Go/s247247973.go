package main

import "fmt"

func main() {
	temp := 0
	fmt.Scanf("%d", &temp)
	if temp < 30 {
		fmt.Println("No")
	} else {
		fmt.Println("Yes")
	}
}
