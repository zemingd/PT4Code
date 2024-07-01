package main

import "fmt"

func main() {
	var A, B, r int
	fmt.Scan(&A, &B)
	r = B / A
	if r > 0 && B%A > 0 {
		r++
	}
	fmt.Println(r)
}