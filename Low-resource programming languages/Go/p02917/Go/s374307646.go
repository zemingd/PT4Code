package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	b := make([]int, n-1)
	for i, _ := range b {
		fmt.Scan(&b[i])
	}

	ans := 0
	for i, v := range b {
		if i == 0 {
			ans += v
		}
		if i == len(b)-1 {
			ans += v
			fmt.Println(ans)
			return
		}
		ans += min(v, b[i+1])
	}
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}