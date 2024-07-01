package main

import "fmt"

func main() {
	var r, D, x2000, x int
	fmt.Scan(&r, &D, &x2000)
	x = x2000
	for i := 0; i < 10; i++ {
		x = r*x - D
		fmt.Println(x)
	}
}