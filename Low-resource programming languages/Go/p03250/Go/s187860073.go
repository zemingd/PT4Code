package main

import (
	"fmt"
	"sort"
)

func main() {
	nums := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&nums[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(nums)))
    ans := nums[0]*10 + nums[1] + nums[2]
	fmt.Println(ans)
}
