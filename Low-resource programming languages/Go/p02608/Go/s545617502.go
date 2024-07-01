package main

import "fmt"

func main() {
	var N int
	var count int

	fmt.Scan(&N)

	for i := 1; i <= N; i++ {
		for x := 1; x < N; x++ {
			for y := 1; y < N; y++ {
				for z := 1; z < N; z++ {
					if(calc(x, y, z) == i) {

						count++
					}
				}
			}
		}
		fmt.Println(count)
		count = 0
	}
}

func calc(x, y, z int) 	int {
	return (x*x) + (y*y) + (z*z) + (x*y) + (z*y) + (z*x)
}