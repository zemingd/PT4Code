package main

import (
	"fmt"
	"math"
	"sort"
)

type Job struct {
	Day    int
	Reward int
}

type Jobs []Job

func (jobs Jobs) Len() int {
	return len(jobs)
}

func (jobs Jobs) Swap(i, j int) {
	jobs[i], jobs[j] = jobs[j], jobs[i]
}

func (jobs Jobs) Less(i, j int) bool {
	if jobs[i].Reward == jobs[j].Reward {
		return jobs[i].Day > jobs[j].Day
	}
	return jobs[i].Reward > jobs[j].Reward
}

func main() {
	nums := scanNums(2)
	n := nums[0]
	m := nums[1]

	jobs := make(Jobs, n)
	for i := 0; i < n; i++ {
		nums = scanNums(2)
		jobs[i].Day = nums[0]
		jobs[i].Reward = nums[1]
	}

	sort.Sort(jobs)

	rewards := 0
	rest := m
	for i := 0; i < len(jobs); i++ {
		if jobs[i].Day <= rest {
			rewards += jobs[i].Reward
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
