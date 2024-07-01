package main

import "fmt"

func main() {
	var n, k, x, y int
	fmt.Scan(&n, &k, &x, &y)

	var sum int

	for i := 0; i < n; i++ {
		if i < k {
			sum = sum + x
		} else {
			sum = sum + y
		}
	}

	fmt.Println(sum)

}
