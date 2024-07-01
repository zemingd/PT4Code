package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	add := A + B
	sub := A - B
	mul := A * B
	max := -100000000
	for _, x := range []int{add, sub, mul} {
		if x > max {
			max = x
		}
	}
	fmt.Println(max)
}
