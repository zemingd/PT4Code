package main

import (
	"fmt"
	"sort"
	"strconv"
)

func main() {
	nums := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&nums[i])
	}
	sort.Sort(sort.Reverse(sort.IntSlice(nums)))
	n, _ := strconv.Atoi(strconv.Itoa(nums[0]) + strconv.Itoa(nums[1]))
	fmt.Println(n + nums[2])
}
