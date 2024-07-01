package main

import (
	"fmt"
)

func main() {
	var n, time, ans int
	fmt.Scanf("%d %d", &n, &time)
	c := make([]int, n)
	t := make([]int, n)
	ans = 1001
	for i := 0; i < n; i++ {
		fmt.Scanf("%d %d", &c[i], &t[i])
		if t[i] <= time && c[i] < ans {
			ans = c[i]
		}
	}
	if ans == 1001 {
		fmt.Println("TLE")
	} else {
		fmt.Println(ans)
	}
}