package main

import "fmt"

func main() {
	var n, v int
	var sticks []int
	fmt.Scan(&n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v)
		sticks = append(sticks, v)
	}
	count := 0
	for indexA, a := range sticks {
		for indexB, b := range sticks[indexA+1:] {
			for _, c := range sticks[indexA+indexB+2:] {
				if makeTriangle(a, b, c) {
					count++
				}
			}
		}
	}
	fmt.Println(count)
}

func makeTriangle(a, b, c int) bool {
	if a < b+c && b < c+a && c < b+a {
		return true
	}
	return false
}
