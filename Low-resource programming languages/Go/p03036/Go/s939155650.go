package main

import "fmt"

func main() {
	var r, D, x2k, xi, xi1 int
	fmt.Scan(&r, &D, &x2k)
	xi = x2k
	for i := 0; i < 10; i++ {
		xi1 = r*xi - D
		fmt.Println(xi1)
		xi = xi1

	}
}
