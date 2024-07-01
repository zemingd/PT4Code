package main

import "fmt"

func main() {

	var r, D, x int
	fmt.Scan(&r, &D, &x)

	for i := 1; i <= 10; i++ {
		fmt.Println(r*x - D)
		x = r*x - D
	}
}
