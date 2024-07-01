package main

import (
	"fmt"
	"sort"
)

func main() {
	// var tasks [3]int
	tasks := make([]int, 3, 3)
	fmt.Scan(&tasks[0], &tasks[1], &tasks[2])

	sort.Ints(tasks)

	answer := (tasks[2] - tasks[1]) + (tasks[1] - tasks[0])
	fmt.Println(answer)
}