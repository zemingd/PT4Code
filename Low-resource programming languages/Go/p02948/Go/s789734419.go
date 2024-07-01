package main

import (
	"fmt"
	"math"
	"sort"
)

func main() {
	nums := scanNums(2)
	n := nums[0]
	m := nums[1]

	jobs := make([][]int, n)
	for i := 0; i < n; i++ {
		nums = scanNums(2)
		jobs[i] = []int{nums[0], nums[1]}
	}

	// 報酬で逆順ソート
	sort.Slice(jobs, func(i, j int) bool {
		if jobs[i][1] == jobs[j][1] {
			return jobs[i][0] > jobs[j][0]
		}
		return jobs[i][1] > jobs[j][1]
	})

	rewards := 0
	rest := m
	for i := 0; i < len(jobs); i++ {
		if jobs[i][0] <= rest {
			rewards += jobs[i][1]
			rest--

			if rest == 0 {
				break
			}
		}
	}

	fmt.Println(rewards)
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func scanStrings(len int) (strings []string) {
	var str string
	for i := 0; i < len; i++ {
		fmt.Scanf("%s", &str)
		strings = append(strings, str)
	}
	return
}

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}

func min(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}

func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func strSearch(a []string, b string) bool {
	for i := 0; i < len(a); i++ {
		if a[i] == b {
			return true
		}
	}
	return false
}
