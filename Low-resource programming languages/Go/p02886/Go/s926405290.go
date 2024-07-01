package main

import "fmt"

func main() {
	var n, sum int

	fmt.Scan(&n)

	d := make([]int, n)
	for i := range d {
		fmt.Scan(&d[i])
	}

	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			sum += d[i] * d[j]
		}
	}
	fmt.Println(sum)
}
