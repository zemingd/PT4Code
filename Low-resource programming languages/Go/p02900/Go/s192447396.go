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
	//互いに素でない間
	j := 2
	for gcd(a, b) != 1 {
		for i := j; i <= a; i++ {
			if i != 2 && i % 2 == 0 {
				continue
			}
			if a % i == 0 && b % i == 0 {
				listMap[i]++
				a /= i; b /= i
				j = i
				break
			}
		}
	}
	//1の分加算
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