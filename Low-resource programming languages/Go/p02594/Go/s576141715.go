package main

import "fmt"

func main() {
	c := 0

	fmt.Scanf("%d", &c)

	if c >= 30 {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
