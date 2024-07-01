package main

import "fmt"

func main() {
	var (
		n int
		s string
	)
	fmt.Scan(&n, &s)

	sum := make(map[int]int)
	sum[0] = 0
	for i := 1; i < n; i++ {
		if string(s[i]) == "E" {
			sum[0]++
		}
	}
	for i := 1; i < n; i++ {
		sum[i] = sum[i-1]
		if string(s[i]) == "E" {
			sum[i]--
		}
		if string(s[i-1]) == "W" {
			sum[i]++
		}
	}

	min := n
	for _, v := range sum {
		if v < min {
			min = v
		}
	}
	fmt.Println(sum)
	fmt.Println(min)
}
