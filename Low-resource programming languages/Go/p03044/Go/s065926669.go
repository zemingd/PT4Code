package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	// in := make([][]int, N)
	colors := make([]bool, N) //false: 黒, true: 白

	for i := 0; i < N-1; i++ {
		uvw := scanNums(3)

		if i == 0 {
			colors[uvw[0]] = false
		} //ほんとはいらない

		if uvw[2] == 0 { //even
			colors[uvw[1]-1] = colors[uvw[0]-1]
		} else {
			colors[uvw[1]-1] = !colors[uvw[0]-1]
		}
	}

	for i := 0; i < N; i++ {
		if colors[i] {
			fmt.Println(0)
		} else {
			fmt.Println(1)
		}
	}
}

func scanNums(length int) (nums []int) {
	var num int
	for i := 0; i < length; i++ {
		fmt.Scan(&num)
		if i == 2 {
			if num%2 == 0 {
				num = 0 //even
			} else {
				num = 1 //odd
			}
		}
		nums = append(nums, num)
	}
	return
}
