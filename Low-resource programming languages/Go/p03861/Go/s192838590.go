package main

import "fmt"

func main() {
	var a, b, x int64
	fmt.Scan(&a, &b, &x)
	fmt.Println(b/x - (a-1)/x)
}
