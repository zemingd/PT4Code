package main

import "fmt"

func main() {
	var X int
	fmt.Scan(&X)
	ans := 1
	for b := 2; b*b <= X; b++ {
		v := b * b
		for v <= X {
			ans = Max(ans, v)
			v *= b
		}
	}
	fmt.Println(ans)
}

func Max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
