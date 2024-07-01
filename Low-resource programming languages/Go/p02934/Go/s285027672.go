package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	ret := 0.0
	for i := 0; i < n; i++ {
		var a int
		fmt.Scan(&a)
		ret += 1 / float64(a)
	}

	fmt.Println(1 / ret)
}
