package main

import "fmt"

func main() {
	var n, k, x, y, total int
	fmt.Scan(&n, &k, &x, &y)
	for i := 0; i < n; i++ {
		if i < k {
			total += x
			continue
		}
		total += y
	}
	fmt.Println(total)
}
