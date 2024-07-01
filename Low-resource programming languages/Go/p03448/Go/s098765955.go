package main

import "fmt"

func main() {
	var a, b, c, x int
	fmt.Scan(&a)
	fmt.Scan(&b)
	fmt.Scan(&c)
	fmt.Scan(&x)

	var result int
	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for m := 0; m <= c; m++ {
				if i*500+j*100+m*50 == x {
					result++
				}
			}
		}
	}
	fmt.Println(result)
}
