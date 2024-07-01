package main

import "fmt"

func main() {

	var A, B int
	sum := 0

	fmt.Scan(&A, &B)

	if A < B {
		sum += B
		B--
	} else {
		sum += A
		A--
	}
	if A < B {
		sum += B
		B--
	} else {
		sum += A
		A--
	}
	fmt.Println(sum)

}
