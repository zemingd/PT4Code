package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}

	d := 0
	count := 0
	for i := 0; i < n; i++ {
		if d <= x {
			count++
		}
		d = d + l[i]
 	}

	fmt.Println(count)
}
