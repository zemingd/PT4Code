package main

import (
	"fmt"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)
	if a > b {
		a, b = b, a
	}
	var listMap = make(map[int]int, 0)
	for gcd(a, b) != 1 {
		for i := 2; i <= a; i++ {
			if a % i == 0 && b % i == 0 {
				listMap[i]++
				a /= i; b /= i
			}
		}
	}
	listMap[1]++
	fmt.Println(len(listMap))
}

func gcd(i int, j int) int {
	var k int
	for j > 0 {
		k = i % j
		i = j
		j = k
	}
	return i
}