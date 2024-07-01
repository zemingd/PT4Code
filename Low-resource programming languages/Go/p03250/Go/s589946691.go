package main

import "fmt"

func max(a []int) int {
	max := 0

	for i := 0; i < len(a); i++ {
		if a[i] > max {
			max = a[i]
		}
	}
	return max
}

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)

	ans := -1
	mx := max([]int{a, b, c})
	ans = a + b + c + mx*9
	fmt.Println(ans)
}
