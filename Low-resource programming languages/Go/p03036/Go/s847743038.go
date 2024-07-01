package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)

	res := r*x - d
	fmt.Println(res)
	for i := 0; i < 9; i++ {
		res = r*res - d
		fmt.Println(res)
	}
}
