package main

import "fmt"

func main() {
	var n, total int
	fmt.Scan(&n)
	for i := 1; i <= n; i++ {
		total += i
	}
	fmt.Println(total)
}
