package main

import "fmt"

func main() {
	var A, B, C, K int
	fmt.Scan(&A,&B,&C,&K)

	if (K<=A+B) {
		fmt.Println(A)
	}else {
		fmt.Println(2*A+B-K)
	}
}