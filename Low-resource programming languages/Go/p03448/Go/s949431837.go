package main

import "fmt"

func main() {
	var a, b, c, x int
	fmt.Scan(&a, &b, &c, &x)
	var count = 0

	for i := 0; i <= a; i++ {
		var ra int
		ra = 500 * i
		for j := 0; j <= b; j++ {
			var rb int
			rb = 100 * j
			for k := 0; k <= c; k++ {
				var rc int
				rc = 50 * k
				if ra+rb+rc == x {
					count++
				}
			}
		}
	}

	fmt.Println(count)
}
