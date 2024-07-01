package main

import "fmt"

func main() {
	var r, d, x int
	fmt.Scan(&r, &d, &x)
	var xx int
	for i := 0; i < 10; i++ {
		xx = r*x - d
		fmt.Println(xx)
		x = xx
	}
}
