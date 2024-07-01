package main

import "fmt"

func main() {
	var a, b, c, x, count int
	fmt.Scan(&a, &b, &c, &x)

	for i := 0; i <= a; i++ {
		for j := 0; j <= b; j++ {
			for k := 0; k <= c; k++ {
				if x == i*500+j*100+k*50 {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}
