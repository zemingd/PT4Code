package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	d := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}

	res := 0
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if i == j {
				continue
			}
			res += d[i] * d[j]
		}
	}
	fmt.Println(res / 2)
}
