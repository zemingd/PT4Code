package main

import "fmt"

func main() {
	var K, S int
	fmt.Scanf("%d %d", &K, &S)

	result := 0
	for x := 0; x <= K; x++ {
		diff := S - x
		if 2*K < diff {
			continue
		} else if diff-K <= 0 {
			result += diff + 1
		} else {
			result += min(2*K-diff+1, diff-K+1)
		}
	}

	fmt.Println(result)
}

func min(s ...int) int {
	minContent := s[0]
	for _, el := range s {
		if el < minContent {
			minContent = el
		}
	}
	return minContent
}
