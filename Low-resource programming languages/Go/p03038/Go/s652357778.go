package main

import "fmt"

func sort(nums []int64, n int64) {
	flag := true
	for i := int64(0); flag; i++ {
		flag = false
		for j := n - 1; j > i; j-- {
			if nums[j] < nums[j-1] {
				nums[j], nums[j-1] = nums[j-1], nums[j]
				flag = true
			}
		}
	}
}

func min(a, b int64) int64 {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, m int64
	fmt.Scan(&n, &m)

	a := make([]int64, n)
	for i := int64(0); i < n; i++ {
		fmt.Scan(&a[i])
	}

	b := make([]int64, m)
	c := make([]int64, m)
	for i := int64(0); i < m; i++ {
		fmt.Scan(&b[i], &c[i])
	}

	for i := int64(0); i < m; i++ {
		sort(a, n)
		ai := n
		for j := int64(0); j < n; j++ {
			if a[j] >= c[i] {
				ai = j
				break
			}
		}
		ai = min(b[i], ai)
		for j := int64(0); j < ai; j++ {
			a[j] = c[i]
		}
	}
	sum := int64(0)
	for _, v := range a {
		sum += v
	}
	fmt.Println(sum)
}
