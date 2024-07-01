package main

import "fmt"

func main() {
	var N, Y int
	fmt.Scan(&N, &Y)

	for x := 0; x <= N; x++ {
		for y := 0; y <= N; y++ {
			z := N - x - y
			if x*1000+y*5000+z*10000 == Y {
				fmt.Println(x, y, z)
				return
			}
		}
	}

	fmt.Println(-1, -1, -1)
}
