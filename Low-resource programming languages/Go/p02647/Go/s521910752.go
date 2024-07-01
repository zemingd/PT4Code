package main

import "fmt"

func main() {
	var n,k int
	fmt.Scan(&n)
	fmt.Scan(&k)
	light := make([]int, n)
	ground := make([]int, n)
	for i:=0; i<n; i++ {
		fmt.Scan(&light[i])
	}
	for l := 0; l < k; l++ {
		for i := 0; i < n; i++ {
			ground[i] = 0
			for j := 0; j < n; j++ {
				dis := i - j
				if dis < 0 {
					dis *= -1
				}
				if light[j] >= dis {
					ground[i] += 1
				}
			}
		}
		light = ground
		ground = make([]int, n)
	}
	for i:=0; i<n; i++ {
		fmt.Print(light[i])
	}
}