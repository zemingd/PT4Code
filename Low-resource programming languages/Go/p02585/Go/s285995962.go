package main

import "fmt"

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	p := make([]int, n+1)
	for i := 1 ; i <=n ;i++ {
		fmt.Scan(&p[i])
	}
	c := make([]int, n+1)
	for i := 1 ; i <=n ;i++ {
		fmt.Scan(&c[i])
	}

	max := 0
	// dp := make([][k] , n + 10)
	for start := 1 ; start < n + 1; start++ {
		next := start
		score := 0
		for i := 0 ; i < k; i++ {
			next = p[next]
			score += c[next]
			if max < score {
				max = score
			}
		}
	}
	if max == 0 {
		for i := 1; i < n + 1; i++ {
			if c[i] > max{
				max= c[i]
			}
		}
		fmt.Println(max)
		return
	}
	fmt.Println(max)
}
