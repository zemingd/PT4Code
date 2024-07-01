package main

import (
	"fmt"
)

func abs(i int) int {
	if i < 0 {
		return -i
	}
	return i
}

func main() {
	var n, sum int
	fmt.Scan(&n)
	a := make([]int, n)
	d := make([]int, n+1)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if i == 0 {
			d[0] = abs(a[0])
			sum = d[0]
			continue
		}
		d[i] = abs(a[i] - a[i-1])
		sum += d[i]
	}
	d[n] = abs(a[n-1])
	sum += d[n]

	for i := 0; i < n; i++ {
		if i == 0 {
			fmt.Println(sum - d[0] - d[1] + abs(a[1]))
			continue
		}
		if i == n-1 {
			fmt.Println(sum - d[i+1] - d[i] + abs(a[i-1]))
			continue
		}
		fmt.Println(sum - d[i] - d[i+1] + abs(a[i-1]-a[i+1]))
	}
}
