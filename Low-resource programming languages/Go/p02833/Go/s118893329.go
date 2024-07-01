package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d\n", &N)
	fmt.Println(N)
	if N%2 != 0 {
		fmt.Println(0)
		return
	}
	n := N / 2
	r := 0
	for n > 0 {
		r += n / 5
		n /= 5
	}
	fmt.Println(r)
}
