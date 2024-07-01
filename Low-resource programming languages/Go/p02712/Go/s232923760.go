package main

import "fmt"

func main() {
	var n, i, sum int64
	fmt.Scan(&n)
	sum = 0
	for i = 1; i <= n; i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += i
		}
	}
	fmt.Println(sum)
}
