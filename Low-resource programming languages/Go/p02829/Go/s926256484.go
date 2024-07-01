package main

import "fmt"

func main() {
	var a, b int
	slice := []int{1,2,3}
	ans := []int{}

	fmt.Scanf("%d %d", &a, &b)
	for i := 0;i < len(slice);i++ {
		if (slice[i] != a && slice[i] != b) {
			ans = append(ans, slice[i])
		}
	}

	if (len(ans) > 0) {
		fmt.Printf("%d", ans[0])
	}
}
