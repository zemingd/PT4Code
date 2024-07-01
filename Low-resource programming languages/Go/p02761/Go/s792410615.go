package main

import (
	"fmt"
	"os"
)

func main() {
	var N, M int
	var s [6]int
	var c [6]int
	var r [6]int

	res := 0

	fmt.Scan(&N, &M)
	for i := 0; i < N; i++ {
		r[i] = 10
	}
	for i := 0; i < M; i++ {
		fmt.Scan(&s[i], &c[i])
		if r[N-s[i]] < 10 {
			fmt.Printf("-1\n")
			// fmt.Printf("X\n")
			os.Exit(0)
		}
		if r[N-s[i]] > c[i] {
			r[N-s[i]] = c[i]
		}
	}
	if r[N-1] == 0 {
		fmt.Printf("-1\n")
		// fmt.Printf("B\n")
		os.Exit(0)
	}
	for i := 0; i < N; i++ {
		if i == N-1 && N > 1 && r[i] == 10 {
			r[i] = 1
		} else if r[i] == 10 {
			r[i] = 0
		}
	}
	power := 1
	for i := 0; i < N; i++ {
		res += power * r[i]
		power *= 10
	}

	// fmt.Printf("%v\n", M)
	// fmt.Printf("%v\n", s)
	// fmt.Printf("%v\n", c)

	fmt.Printf("%d\n", res)
}
