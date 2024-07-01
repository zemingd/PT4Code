package main

import "fmt"

func main() {
	var N, sum int
	fmt.Scan(&N)
	for i := 1; i <= N; i++ {
		if i%3 != 0 && i%5 != 0 {
			sum += i
		}
	}
	fmt.Println(sum)
}
