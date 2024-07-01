package main

import "fmt"

func main() {
	var x int
	fmt.Scan(&x)

	ans := 1
	for i := 2; i*i <= x; i++ {
		j := i
		for {
			j *= i
			if j > x {
				break
			}
			ans = max(ans, j)
		}
	}
	fmt.Println(ans)
}

func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}
