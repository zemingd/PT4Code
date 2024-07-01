package main

import (
	"fmt"
)

func main() {
	var i int
	fmt.Scan(&i)
	fmt.Println(cube3(i))
}

func cube3(x int) int {
	return x * x * x
}
