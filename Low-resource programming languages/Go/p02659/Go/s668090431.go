package main

import (
	"fmt"
)

func main() {

	var a int
	var b float64
	fmt.Scan(&a, &b)

	result := float64(a) * b

	fmt.Println(int(result))

}
