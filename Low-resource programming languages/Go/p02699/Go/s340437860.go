package main

import "fmt"

func main() {
	var s, w int
	fmt.Scanf("%d %d", &s, &w)
	if s <= w {
		fmt.Println("unsafe")
	} else {
		fmt.Println("safe")
	}
}
