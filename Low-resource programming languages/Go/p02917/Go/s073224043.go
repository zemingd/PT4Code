package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	nums := make([]int, n-1)
	ans := make([]int, n)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&nums[i])
	}

	for index, num := range nums {
		if index == 0 {
			ans[0] = num
			ans[1] = num
		} else {
			if ans[index] > num {
				ans[index] = num
				ans[index+1] = num
			} else {
				ans[index+1] = num
			}
		}
	}

	sum := 0
	for _, num := range ans {
		sum += num
	}
	fmt.Println(sum)
}
