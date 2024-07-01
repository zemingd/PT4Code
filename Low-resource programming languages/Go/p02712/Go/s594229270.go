package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var total int = 0
	var i int
	for i = 1; i < n+1; i++ {
		if i%3 != 0 && i%5 != 0 {
			total += i
		}
	}
	fmt.Println(total)
}
