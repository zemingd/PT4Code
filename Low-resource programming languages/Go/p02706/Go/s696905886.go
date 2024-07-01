package main

import "fmt"

func Sum(nums []int) int {
	sum := 0
	for _, v := range nums {
		sum += v
	}
	return sum
}

func main() {
	var n, m, sum int
	fmt.Scan(&n, &m)
	a := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&a[i])
	}
	sum = Sum(a)
	if n >= sum {
		fmt.Println(n - sum)
	} else {
		fmt.Println(-1)
	}
}