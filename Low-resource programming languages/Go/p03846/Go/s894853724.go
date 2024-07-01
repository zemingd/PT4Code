package main

import (
	"fmt"
)

func main() {
	var N, A int
	fmt.Scan(&N)
	m := map[int]int{}
	for i := 0; i < N; i++ {
		fmt.Scan(&A)
		m[A]++
	}
	r := 1
	for k, v := range m {
		if k == 0 {
			if N%2 == 0 || v != 1 {
				fmt.Println(0)
				return
			}
		} else {
			if N%2 == k%2 {
				fmt.Println(0)
				return
			}
			if v != 2 {
				fmt.Println(0)
				return
			}
		}
		r = (r * v) % 1000000007
	}
	fmt.Println(r)
}
