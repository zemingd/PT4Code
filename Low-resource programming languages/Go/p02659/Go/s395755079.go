package main

import (
	"fmt"
)

func main() {
	var a, b float64
	fmt.Scan(&a, &b)
	ia, ib := int(a), int(b*100)

	fmt.Println(ia * ib / 100)
}
