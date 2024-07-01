package main

import (
	"fmt"
	"strconv"
)

func main() {
	// Code for C - To Infinity
	var S string
	var K int
	fmt.Scanf("%s", &S)
	fmt.Scanf("%d", &K)

	var count int
	var A int
	for i := 0; i < len(S); i++ {
		A, _ = strconv.Atoi(string(S[i]))
		if A == 1 {
			count++
		} else {
			fmt.Println(A)
			break
		}

		if count == K {
			fmt.Println("1")
			break
		}
	}

}
