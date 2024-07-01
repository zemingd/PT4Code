package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	num := h / 2 * w
	if h*w%2 != 0 {
		num += w - w/2
	}
	fmt.Println(num)
}
