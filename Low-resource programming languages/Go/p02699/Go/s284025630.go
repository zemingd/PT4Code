package main

import "fmt"

func main() {
	var s, w int
	fmt.Scanf("%d %d", &s, &w)
	if w >= s {
		fmt.Println("unsafe")
	} else {
		fmt.Println("safe")
	}
}
