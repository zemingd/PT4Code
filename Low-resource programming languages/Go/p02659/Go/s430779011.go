package main

import "fmt"

func main() {
	var a int64
	var b float32
	fmt.Scan(&a, &b)
	fmt.Print(a * int64((b * 100 + 0.5)) / 100)
}