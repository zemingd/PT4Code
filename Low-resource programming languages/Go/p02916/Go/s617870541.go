package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	var Ai = make([]int, N)
	var Bi = make([]int, N)
	var Ci = make([]int, N-1)

	for i := 0; i < N; i++ {
		fmt.Scan(&Ai[i])
	}

	for i := 0; i < N; i++ {
		fmt.Scan(&Bi[i])
	}

	for i := 0; i < N-1; i++ {
		fmt.Scan(&Ci[i])
	}

	Satisfaction := 0
	prev := 0

	for _, A := range Ai {
		Satisfaction += Bi[A-1]
		if prev != 0 && prev+1 == A {
			Satisfaction += Ci[A-2]
		}
		prev = A
	}

	fmt.Println(Satisfaction)

}
