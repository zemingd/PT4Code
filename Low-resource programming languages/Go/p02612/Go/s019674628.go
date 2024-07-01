package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	fmt.Println(1000 - n%1000)
}
