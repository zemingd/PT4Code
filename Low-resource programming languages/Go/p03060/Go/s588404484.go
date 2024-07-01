package main

import (
	"fmt"
)

func main() {
	var n int
	var vArr []int
	var cArr []int
	vTotal := 0
	cTotal := 0

	fmt.Scanf("%d", &n)
	vArr = make([]int, n)
	cArr = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &vArr[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &cArr[i])
	}

	for i := 0; i < n; i++ {
		if vArr[i] > cArr[i] {
			vTotal += vArr[i]
			cTotal += cArr[i]
		}
	}

	fmt.Println(vTotal - cTotal)

}
