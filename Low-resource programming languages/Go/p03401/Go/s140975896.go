package main

import "fmt"

func abs(i int) int {
	if i < 0 {
		return -i
	}
	return i
}

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n+2)
	a[0] = 0
	for i := 1; i < n+1; i++ {
		fmt.Scan(&a[i])
	}
	a[n+1] = 0

	sum := 0
	for i := 0; i < n+1; i++ {
		sum += abs(a[i+1] - a[i])
	}

	for i := 1; i < n+1; i++ {
		ans := sum - abs(a[i]-a[i-1]) - abs(a[i+1]-a[i]) + abs(a[i+1]-a[i-1])
		fmt.Println(ans)
	}
}
