package main

import (
	"fmt"
	"strings"
)

func main() {
	var s string
	fmt.Scan(&s)
	var C []int = make([]int, len(s))
	var S = strings.Split(s, "")

	for i := 0; i < len(s); i++ {
		C[i] = 1
	}

	for num := 0; num < 1000; num++ {
		var D []int = make([]int, len(s))
		for i := 0; i < len(s); i++ {
			D[i] = C[i]
		}
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
			if C[i] != D[i] {
				flg = false
			}
		}
		if flg {
			break
		}
	}
	for i := 0; i < len(s)-1; i++ {
		fmt.Printf("%d ", C[i])
	}
	fmt.Printf("%d", C[len(s)-1])
}
