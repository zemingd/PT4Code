package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	n = n - n/1000*1000
	if n > 0 {
		n = 1000 - n
	}
	fmt.Println(n)
}