package main

import (
	"fmt"
)

func main() {
	var r float64
	fmt.Scan(&r)
	const pi float64 = 3.14159265358979
	fmt.Println(r * 2.0 * pi)
}
