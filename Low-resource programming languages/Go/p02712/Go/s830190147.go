package main

import "fmt"

func main() {
	var n, sum int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		switch {
		case i%15 == 0:
		case i%3 == 0:
		case i%5 == 0:
		default:
			sum += i
		}
	}
	fmt.Println(sum)
}
