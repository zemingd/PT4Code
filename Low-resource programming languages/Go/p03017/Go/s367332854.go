package main

import (
	"fmt"
)

func main() {
	var n, A, B, C, D int
	fmt.Scanf("%d %d %d %d %d", &n, &A, &B, &C, &D)

	var load string
	fmt.Scan(&load)

	for i := A - 1; i < D-1; i++ {
		if load[i] == []byte("#")[0] && load[i+1] == []byte("#")[0] {
			fmt.Println("No")
			return
		}
	}

	if C > D {
		ok := false
		for i := A - 1; i < D-1; i++ {
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

	if C == D {
		fmt.Println("No")
		return
	}

	fmt.Println("Yes")
}
