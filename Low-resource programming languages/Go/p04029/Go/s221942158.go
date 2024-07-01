package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	n =  n * (n + 1) / 2
	fmt.Println(n)
}
