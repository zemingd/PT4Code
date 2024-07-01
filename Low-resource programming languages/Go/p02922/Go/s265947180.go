package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	sum := 0
	for i := 0; ; i++ {
		if sum >= B {
			fmt.Println(i)
			break
		}
		if i == 0 {
			sum += A
		} else {
			sum += A - 1
		}
	}
}
