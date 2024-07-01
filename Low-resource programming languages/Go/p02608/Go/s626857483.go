package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	ans := make([]int, 10000+1)
	for x := 1; x <= 100; x++ {
		for y := 1; y <= 100; y++ {
			for z := 1; z <= 100; z++ {
				a := x*x + y*y + z*z + x*y + y*z + z*x
				if a > 10000 {
					continue
				}
				ans[a]++
			}
		}
	}

	for i := 1; i <= N; i++ {
		fmt.Println(ans[i])
	}
}
