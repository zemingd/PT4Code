package main

import (
	"fmt" //Library for input and output
)

func main() {
	var N int
	fmt.Scan(&N)
	h := make([]int, N+1)
	c := make([]int, N+1)

	for i := 1; i <= N; i++ {
		fmt.Scan(&h[i])
	}

	if N == 1 {
		fmt.Println(0)
		return
	} else if N == 2 {
		fmt.Println(Abs(h[2] - h[1]))
		return
	}

	c[1] = 0
	c[2] = Abs(h[2] - h[1])

	for i := 3; i <= N; i++ {
		c[i] = Min(c[i-1]+Abs(h[i-1]-h[i]), c[i-2]+Abs(h[i-2]-h[i]))
	}

	fmt.Println(c[N])
}

// Abs returns the absolute value of x.
func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

// Min returns the min of x and y
func Min(x int, y int) int {
	if x < y {
		return x
	}
	return y
}
