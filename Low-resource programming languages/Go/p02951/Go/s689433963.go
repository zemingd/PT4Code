package main

import "fmt"

func main() {
	var A, B, C, ret int
	fmt.Scan(&A, &B, &C)

	if A == B {
		ret = C
	} else if C-(A-B) < 0 {
		ret = 0
	} else {
		ret = C - (A - B)
	}
	fmt.Println(ret)
}
