package main

import (
	"fmt"
	"strconv"
)

func main() {
	var strN string
	fmt.Scanf("%s", &strN)
	N, _ := strconv.Atoi(strN)

	max := 0
	count := 0
	for i := 0; i < N; i++ {
		var strA string
		fmt.Scanf("%s", &strA)
		A, _ := strconv.Atoi(strA)
		if max < A {
			max = A
		} else {
			count += max - A
		}
	}

	fmt.Println(count)
}
