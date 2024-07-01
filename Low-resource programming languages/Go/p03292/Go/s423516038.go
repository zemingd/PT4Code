package main

import (
	"fmt"
)

func sort(nums []int, n int) {
	for i := 1; i < n; i++ {
		v := nums[i]
		j := i - 1
		for j >= 0 && v < nums[j] {
			nums[j+1] = nums[j]
			j--
		}
		nums[j+1] = v
	}
}

func main() {
	tasks := make([]int, 3)
	for i := range tasks {
		fmt.Scan(&tasks[i])
	}

	sort(tasks, 3)

	fmt.Println((tasks[1] - tasks[0]) + (tasks[2] - tasks[1]))
}
