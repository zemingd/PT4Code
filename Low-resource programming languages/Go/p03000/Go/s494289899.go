package main

import "fmt"

func main() {
	var n, x, a, sum int
	count := 1
	fmt.Scan(&n, &x)
	for i := 0; i < n; i++ {
		fmt.Scan(&a)
		sum = sum + a
		if sum <= x {
			count++
		}
	}
	fmt.Println(count)
}
