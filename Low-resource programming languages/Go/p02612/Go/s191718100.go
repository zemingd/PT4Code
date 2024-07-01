package main

import(
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	fraction := n%1000
	fmt.Println(1000-fraction)
}