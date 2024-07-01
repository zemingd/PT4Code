package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	fResultCountMap := map[int]int{}

	for x := 1; x < n; x++ {
		for y := 1; y < n; y++ {
			if x*x+y*y+x*y+3 > n {
				break
			}
			for z := 1; z < n; z++ {
				fResult := x*x + y*y + z*z + x*y + y*z + z*x
				if fResult > n {
					break
				}
				fResultCountMap[fResult]++
			}
		}
	}
	for i := 1; i <= n; i++ {
		fmt.Println(fResultCountMap[i])
	}
}
