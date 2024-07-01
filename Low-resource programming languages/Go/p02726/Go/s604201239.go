package main

import "fmt"

func main() {
	var n, x, y int

	fmt.Scan(&n)
	fmt.Scan(&x)
	fmt.Scan(&y)

	a := make([]int, n, n)

	for i := 1; i <= n; i++ {
		for j := i + 1; j <= n; j++ {
			k := min(j-i, abs(x-i)+abs(y-j)+1)
			a[k]++
		}
	}

	for i := 1; i <= n-1; i++ {
		fmt.Println(a[i])
	}
}

func min(n1, n2 int) int {
	if n1 <= n2 {
		return n1
	}
	return n2
}

func abs(n1 int) int {
	if n1 < 0 {
		return -n1
	}
	return n1
}
