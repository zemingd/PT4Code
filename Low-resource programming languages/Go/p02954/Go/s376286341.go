package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	var C []int = make([]int, len(s))
	var D []int = make([]int, len(s))
	var H []int = make([]int, len(s))
	var S = strings.Split(s, "")

	for i := 0; i < len(s); i++ {
		C[i] = 1
		D[i] = 1
		H[i] = 1
	}
	for num := 0; num < 1000; num++ {
		copy(D, C)
		for i := 0; i < len(s); i++ {
			if C[i] > 0 {
				if S[i] == "L" {
					C[i-1] += D[i]
					C[i] -= D[i]
				} else if S[i] == "R" {
					C[i+1] += D[i]
					C[i] -= D[i]
				}
			}
		}
		var flg = true
		for i := 0; i < len(s); i++ {
			if C[i] != H[i] {
				flg = false
			}
		}
		if flg && num > 10 {
			break
		}
		copy(H, D)
	}
	for i := 0; i < len(s)-1; i++ {
		fmt.Printf("%d ", C[i])
	}
	fmt.Printf("%d", C[len(s)-1])
}
