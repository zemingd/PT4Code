package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	cursor := 0
	for i := 0; i < n; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		cursor += b
		if cursor >= k {
			fmt.Println(a)
			return
		}
	}
}