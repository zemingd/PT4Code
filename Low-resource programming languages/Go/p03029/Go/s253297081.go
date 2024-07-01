package main

import "fmt"

func main() {
	var a, p int
	fmt.Scan(&a, &p)
	sum := a*3 + p
	fmt.Println(sum/2)
}