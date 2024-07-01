package main

import "fmt"

var buf float64

func main() {
	var N int
	fmt.Scan(&N)
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		buf += float64(1) / float64(a)
	}
	fmt.Println(1 / buf)
}
