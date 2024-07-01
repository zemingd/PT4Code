package main

import "fmt"

func main() {
	var s, w int
	fmt.Scan(&s, &w)

	if w >= s {
		fmt.Println("unsafe")
	} else {
		fmt.Println("safe")
	}
}
