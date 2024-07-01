package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := make([]bool, 1000000000)
	var A int
	res := "YES"
	for i := 0; i < N; i++ {
		fmt.Scan(&A)
		if inputs[A] == true {
			res = "NO"
			break
		}
		inputs[A] = true
	}
	// fmt.Println(inputs)
	fmt.Println(res)
}
