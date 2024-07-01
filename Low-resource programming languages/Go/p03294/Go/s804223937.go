package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)
	s := 0
	for i := 0; i < N; i++ {
		var a int
		fmt.Scan(&a)
		s += a - 1
	}
	fmt.Println(s)
}
