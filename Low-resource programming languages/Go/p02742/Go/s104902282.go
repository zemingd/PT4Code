package main

import "fmt"

var h, w int

func main() {
	fmt.Scan(&h, &w)
	if w == 1 || h == 1 {
		fmt.Println(1)
		return
	}
	fmt.Println((1 + (h * w)) / 2)
}
