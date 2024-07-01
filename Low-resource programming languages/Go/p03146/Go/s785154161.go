package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)

	loop := true
	nums := make(map[int]int)
	nums[n]++
	for loop {
		if n%2 == 0 {
			n /= 2
		} else {
			n = n*3 + 1
		}
		nums[n]++

		if nums[n] > 1 {
			loop = false
		}
	}

	var count int
	for _, val := range nums {
		count += val
	}
	fmt.Print(count)
}
