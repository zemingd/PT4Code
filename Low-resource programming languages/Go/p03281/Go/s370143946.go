package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	var eightDivisorCount int
	for i := 1; i <= n; i += 2 {
		var count int
		for j := 1; j <= n; j++ {
			if i%j == 0 {
				count++
			}
		}
		if count == 8 {
			eightDivisorCount++
		}
	}
	fmt.Println(eightDivisorCount)
}
