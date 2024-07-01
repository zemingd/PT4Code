package main

import "fmt"

func main() {
	var n, k, x, y int
	fmt.Scan(&n, &k, &x, &y)
	fmt.Println(x*k + y*(n-k))
}
