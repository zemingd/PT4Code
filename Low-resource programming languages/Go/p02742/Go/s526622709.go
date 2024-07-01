package main

import "fmt"

func main() {
	var h, w int64
	fmt.Scan(&h, &w)

	s := h * w
	fmt.Println(s/2 + s%2)
}
