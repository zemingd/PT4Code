package main

import "fmt"

func main() {
	var r, d int
	var x []int

	var tmp int
	fmt.Scan(&r, &d, &tmp)
	x = []int{tmp}

	for i := 0; i < 10; i++ {
		res := r*x[i] - d
		x = append(x, res)
		fmt.Println(res)
	}
}
