package main

import "fmt"

func main() {

	var a int64
	var b float32
	var s int

	_, _ = fmt.Scan(&a, &b)

	s = int(float32(a) * b)

	fmt.Println(s)
}
