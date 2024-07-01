package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	x := 1.0 // 分母
	for _, aa := range a {
		x *= aa
	}

	y := 0.0 // 分子
	for _, aa := range a {
		y += x / aa
	}

	ans := x / y
	fmt.Println(ans)
}
