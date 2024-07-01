package main

import "fmt"

func main() {
	var r, D, x2000 int
	fmt.Scan(&r, &D, &x2000)

	x := x2000
	for i := 1; i <= 10; i++ {
		y := r*x - D
		fmt.Println(y)
		x = y
	}
}
