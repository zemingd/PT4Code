package main

import (
	"fmt"
)

func main() {
	var X, N int
	fmt.Scanf("%d %d", &X, &N)

	p := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &p[i])
	}

	val := X
	dx := 0

	found := false
	for i := 0; i < N; i++ {
		if p[i] == val {
			found = true
			break
		}
	}
	if !found {
		fmt.Println(X)
		return
	}

	for {
		dx++
		val = X - dx
		found = false

		for i := 0; i < N; i++ {
			if p[i] == val {
				found = true
				break
			}
		}
		if !found {
			fmt.Println(val)
			return
		}

		val = X + dx
		found = false
		for i := 0; i < N; i++ {
			if p[i] == val {
				found = true
				break
			}
		}
		if !found {
			fmt.Println(val)
			return
		}
	}

}
