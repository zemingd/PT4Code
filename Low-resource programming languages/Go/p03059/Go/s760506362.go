package main

import (
	"fmt"
)

func main() {
	var a int
	var b int
	var t int
	fmt.Scan(&a, &b, &t)

	d := (float32(t) + 0.5) / float32(a)

	fmt.Println(int(d) * b)
}
