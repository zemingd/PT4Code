package main

import (
	"fmt"
	"math"
)

func main() {
	var N, A int
	fmt.Scan(&N)
	m := map[int]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&A)
		m[A]++
	}
	if N%2 == 0 {
		if _, ok := m[0]; ok {
			fmt.Println(0)
			return
		}
		for i := 1; i < N/2; i += 2 {
			if val, ok := m[i]; ok {
				if val != 2 {
					fmt.Println(0)
					return
				}
			}
		}
	} else {
		for i := 0; i <= N/2; i += 2 {
			if val, ok := m[i]; ok {
				if i == 0 {
					if val != 1 {
						fmt.Println(0)
						return
					}
				} else {
					if val != 2 {
						fmt.Println(0)
						return
					}
				}
			}
		}
	}
	r := int64(math.Pow(2, float64(N/2))) % 10000007
	fmt.Println(r)
}