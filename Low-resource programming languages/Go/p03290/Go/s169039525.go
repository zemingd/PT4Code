package main

import "fmt"

func main() {
	var n, goal, score, count int
	fmt.Scan(&n, &goal)
	nums := make([]int, n)
	bonus := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i], &bonus[i])
	}
	for i := n - 1; i < 0; i++ {
		for nums[i] > 0 {
			score += (i + 1) * 100
			if nums[i] == 1 {
				score += bonus[i]
			}
			count++
			if score >= goal {
				fmt.Println(count)
			}
			nums[i]--
		}
	}
}
