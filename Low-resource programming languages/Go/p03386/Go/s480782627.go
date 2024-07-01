package main

import "fmt"

func main() {
	var a, b, k int
	fmt.Scan(&a, &b, &k)
	if b-a <= 2*(k-1) {
		for i := a; i <= b; i++ {
			fmt.Println(i)
		}
		return
	}
	for i := a; i < a+k; i++ {
		fmt.Println(i)
	}
	for i := b - k + 1; i <= b; i++ {
		fmt.Println(i)
	}
}
