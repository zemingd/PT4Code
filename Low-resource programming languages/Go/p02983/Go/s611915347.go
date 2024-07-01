package main

import (
	"fmt"
)

func main() {
	var (
		L int
		R int
	)
	fmt.Scanf("%d %d", &L, &R)

	var mod = 2019

	if R-L+1 > 2019 {
		mod = 0
	} else {

		for i := L; i <= R; i++ {
			for j := i + 1; j <= R; j++ {
				if m := (i * j) % 2019; m < mod {
					mod = m
				}
			}
		}
	}

	fmt.Println(mod)
}