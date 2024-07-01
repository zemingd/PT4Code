package main

import "fmt"

func main() {
	var a, b int
	fmt.Scanf("%d %d", &a, &b)

	if a > 12 {
		fmt.Println(b)
	} else if a >= 6 {
		fmt.Println(b / 2)
	} else {
		fmt.Println(0)
	}
}
