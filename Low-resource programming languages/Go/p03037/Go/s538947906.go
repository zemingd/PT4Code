package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	min := 1
	max := N
	for i := 0; i < M; i++ {
		lr := scanNums(2)
		if min < lr[0] {
			min = lr[0]
		}
		if lr[1] < max {
			max = lr[1]
		}
	}
	fmt.Println(max - min + 1)

}

func scanNums(length int) (nums []int) {
	var num int
	for i := 0; i < length; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
