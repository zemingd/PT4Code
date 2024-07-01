package main

import "fmt"

func main() {
	var x, n, count int
	fmt.Scan(&x)
	n, count = 100, 0
	for {
		count++
		n = int(float64(n) * 1.01)
		if x <= n {
			fmt.Print(count)
			break
		}
	}
}
