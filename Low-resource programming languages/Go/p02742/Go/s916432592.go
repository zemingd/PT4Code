package main

import "fmt"

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	num := h * w
	fmt.Println(num/2 + num%2)
}
