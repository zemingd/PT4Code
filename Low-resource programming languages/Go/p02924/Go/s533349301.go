package main

import (
	"fmt"
)

func main() {
	var n int64
	fmt.Scan(&n)
	var a int64
	a = (n * (n - 1)) / 2
	fmt.Println(a)
}
