package main

import "fmt"

var (
	N int
	X int
	Y int
)

func main() {
	fmt.Scan(&N, &X, &Y)

	for i := 1; i <= N-1; i++ {
		for j := i + 1; j <= N; j++ {
			fmt.Printf("d(%d, %d) : %d\n", i, j, d(i, j))
		}
	}

	m := make(map[int]int)
	for i := 1; i <= N-1; i++ {
		for j := i + 1; j <= N; j++ {
			m[d(i, j)]++
		}
	}
	for k := 1; k < N; k++ {
		fmt.Println(m[k])
	}
}

func min(x1, x2, x3, x4 int) int {
	var x12, x34 int
	if x1 < x2 {
		x12 = x1
	} else {
		x12 = x2
	}
	if x3 < x4 {
		x34 = x3
	} else {
		x34 = x4
	}
	if x12 < x34 {
		return x12
	}
	return x34
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func d(i, j int) int {
	d1 := abs(j-i)
	d2 := abs(j-X) + abs(X-i)
	d3 := abs(j-Y) + abs(Y-i)
	d4 := abs(X-i) + 1 + abs(Y-j)

	return min(d1, d2, d3, d4)
}
