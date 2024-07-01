package main

import (
	"fmt"
	"math"
)

func makeCopy(nums []int) []int {
	return append([]int{}, nums...)
}

func factorial(n int) int {
	if n == 1 {
		return 1
	}
	return factorial(n-1) * n
}

func permute(nums []int, ret *[][]int) {
	*ret = append(*ret, makeCopy(nums))

	n := len(nums)
	p := make([]int, n+1)
	for i := 0; i < n+1; i++ {
		p[i] = i
	}
	for i := 1; i < n; {
		p[i]--
		j := 0
		if i%2 == 1 {
			j = p[i]
		}

		nums[i], nums[j] = nums[j], nums[i]
		*ret = append(*ret, makeCopy(nums))
		for i = 1; p[i] == 0; i++ {
			p[i] = i
		}
	}
}

func Permute(nums []int) [][]int {
	n := factorial(len(nums))
	ret := make([][]int, 0, n)
	permute(nums, &ret)
	return ret
}

func main() {
	var n int
	fmt.Scan(&n)
	x := make([]int, n)
	y := make([]int, n)
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		nums[i] = i
		fmt.Scan(&x[i], &y[i])
	}

	sum := 0.0
	for _, v := range Permute(nums) {
		for i := 0; i < n-1; i++ {
			diff := math.Sqrt(math.Pow(float64(x[v[i]]-x[v[i+1]]), 2) + math.Pow(float64(y[v[i]]-y[v[i+1]]), 2))
			sum += diff
		}
	}
	fmt.Println(sum / float64(factorial(n)))
}
