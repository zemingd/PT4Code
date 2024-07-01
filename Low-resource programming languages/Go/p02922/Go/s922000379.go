package main

import "fmt"

func main() {
	var A, B int
	fmt.Scan(&A, &B)
	sum := 0
	for i := 0; ; i++ {
		if i == 0 {
			sum += A
		} else {
			sum += A - 1
		}
		if sum >= B {
			fmt.Println(i + 1)
			break
		}
	}
}
