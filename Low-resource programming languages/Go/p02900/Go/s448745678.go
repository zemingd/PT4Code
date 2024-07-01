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
	num := gcd(a, b)
	countMap := make(map[int]int, 0)
	for num % 2 == 0{
		countMap[2]++
		num /= 2
	}
	for i := 3; i <= num; i++ {
		for num % i == 0 {
			countMap[i]++
			num /= i
		}
	}
	countMap[1]++
	fmt.Println(len(countMap))
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