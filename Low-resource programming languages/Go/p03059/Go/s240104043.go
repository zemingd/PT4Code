package main

import (
	"fmt"
)

func main() {
	var a, b, t float64
	fmt.Scan(&a, &b, &t)

	fmt.Println(a, b, t)
	fmt.Println(int((t+0.5)/a) * int(b))

}
