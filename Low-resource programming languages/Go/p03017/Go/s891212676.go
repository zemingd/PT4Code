package main

import (
	"fmt"
)

func main() {
	var n, A, B, C, D int
	fmt.Scanf("%d %d %d %d %d", &n, &A, &B, &C, &D)
	A -= 1
	B -= 1
	C -= 1
	D -= 1

	var load string
	fmt.Scan(&load)

	for i := A; i < max(C, D); i++ {
		if load[i] == []byte("#")[0] && load[i+1] == []byte("#")[0] {
			fmt.Println("No")
			return
		}
	}

	if C > D /* 追い抜く場合 */ {
		ok := false
		for i := B - 1; i < D; i++ {
			if load[i] == []byte(".")[0] && load[i+1] == []byte(".")[0] && load[i+2] == []byte(".")[0] {
				ok = true
				break
			}
		}

		if !ok {
			fmt.Println("No")
			return
		}
	}

	fmt.Println("Yes")
}

func max(s ...int) int {
	maxContent := s[0]
	for _, el := range s {
		if el > maxContent {
			maxContent = el
		}
	}
	return maxContent
}
