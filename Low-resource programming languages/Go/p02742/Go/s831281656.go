package main

import "fmt"

var h, w int

func main() {
	fmt.Scan(&h, &w)
	a := (1 + h*w) / 2
	fmt.Println(a)
}
