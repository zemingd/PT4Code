package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var total int = 0
	var i int
	for i = 0; i < n; i++ {
		if i%3 != 0 && i%5 != 0 {
			total += i
		}
	}
	fmt.Println(total)
}
