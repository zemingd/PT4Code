package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	sum := 0
	var tmp int
	for i := 0; i < n; i++ {
		fmt.Scan(&tmp)
		sum += tmp - 1
	}
	fmt.Println(sum)
}
