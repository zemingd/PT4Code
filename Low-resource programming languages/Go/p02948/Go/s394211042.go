package main

import (
	"fmt"
	"math"
)

func main() {
	nums := scanNums(2)
	n := nums[0]
	m := nums[1]

	var jobs [][]int
	for i := 0; i < n; i++ {
		nums = scanNums(2)
		jobs = append(jobs, []int{nums[0], nums[1]})
	}

	//fmt.Println()
	//for _, job := range jobs {
	//	fmt.Println(job.Day, job.Reward)
	//}

	rewards := 0

	var targetJobs [][]int
	for i := 1; i <= m; i++ {
		max := 0

		for _, job := range jobs {
			if job[0] == i {
				targetJobs = append(targetJobs, job)
			}
		}

		selectedIndex := -1
		for index, job := range targetJobs {
			if job[1] > max {
				max = job[1]
				selectedIndex = index
			}
		}

		if selectedIndex != -1 {
			rewards += max
			targetJobs = append(targetJobs[:selectedIndex], targetJobs[selectedIndex+1:]...)
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

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}
