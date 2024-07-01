package main

import "fmt"

func main() {
	var A, B int
	res := 0
	fmt.Scan(&A, &B)
	if A <= B {
		res += B
		B -= 1
	} else {
		res += A
		A -= 1
	}

	if A <= B {
		res += B
		B -= 1
	} else {
		res += A
		A -= 1
	}

	fmt.Println(res)
}
