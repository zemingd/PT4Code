package main

import (
	"fmt"
)

func main() {
	var a, b, t int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&t)

	var ret int
	i := a
	for float64(i) < float64(t)+0.5 {
		ret += b
		i += a
	}

	fmt.Println(ret)
}
