package main

import "fmt"

func main() {
	var n, x int
	fmt.Scan(&n, &x)

	nums := make([]int, n)
	for i, _ := range nums {
		fmt.Scan(&nums[i])
	}

	c := 1
	s := 0
	for _, v := range nums {
		if s+v <= x {
			c++
			s += v
		} else {
			fmt.Println(c)
			return
		}
	}
}