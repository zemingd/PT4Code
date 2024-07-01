package main

import "fmt"

func sort(nums []int, n int) {
	flag := true
	for i := 0; flag; i++ {
		flag = false
		for j := n - 1; j > i; j-- {
			if nums[j] < nums[j-1] {
				nums[j], nums[j-1] = nums[j-1], nums[j]
				flag = true
			}
		}
	}
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)

	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	b := make([]int, m)
	c := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&b[i], &c[i])
	}

	for i := 0; i < m; i++ {
		sort(a, n)
		ai := 0
		for j := 0; j < n; j++ {
			if a[j] >= c[i] {
				ai = j
				break
			}
		}
		ai = min(b[i], ai)
		for j := 0; j < ai; j++ {
			a[j] = c[i]
		}
	}
	sum := 0
	for _, v := range a {
		sum += v
	}
	fmt.Println(sum)
}
