package main

import "fmt"

func main() {
	var n int
	var sum int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		sum += i
	}
	fmt.Println(sum)
}
