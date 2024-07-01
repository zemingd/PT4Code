package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	d := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&d[i])
	}

	var sum int
	for i := 0; i < n; i++ {
		for j := 0; j < n; j++ {
			if j <= i {
				continue
			}
			sum += d[i] * d[j]
		}
	}
	fmt.Println(sum)
}
