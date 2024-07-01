package main

import (
	"fmt"
)

func main() {
	var a, p int
	fmt.Scan(&a)
	fmt.Scan(&p)

	ret := (a * 3 + p) / 2
	fmt.Println(ret)
}
