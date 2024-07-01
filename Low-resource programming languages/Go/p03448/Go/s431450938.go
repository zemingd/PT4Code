package main

import "fmt"

func main() {
	var a, b, c, x int // 500yen, 100yen, 50yen, sum
	fmt.Scan(&a, &b, &c, &x)

	res := 0
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				if (i*500 + j*100 + k*50) == x {
					res++
				}
			}
		}
	}

	fmt.Println(res)
}
