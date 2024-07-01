package main

import "fmt"

func min(a, b int) int {
	if a >= b {
		return b
	}
	return a
}

func main() {
	var S string
	var n0, n1 int
	fmt.Scan(&S)
	for i := 0; i < len(S); i++ {
		if S[i] == byte('0') {
			n0++
		} else {
			n1++
		}
	}
	fmt.Println(2*min(n0, n1))	
}
