package main

import "fmt"

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)

	var count int
	for i := 0; i <= a; i++ {
		n := 500 * i
		if n > x {
			break
		}
		for j := 0; j <= b; j++ {
			m := 100 * j
			if n+m > x {
				break
			}
			for k := 0; k <= c; k++ {
				if n+m+50*k == x {
					count++
				}
			}
		}
	}

	fmt.Println(count)
}
