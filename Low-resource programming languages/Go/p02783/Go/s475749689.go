package main

import (
	"fmt"
)

func main() {
	var h, a int
	fmt.Scan(&h)
	fmt.Scan(&a)

	fmt.Println((h + a - 1) / a)
}
