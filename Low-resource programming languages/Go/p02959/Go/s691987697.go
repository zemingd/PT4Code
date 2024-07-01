package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(2*N + 1)

	As := inputs[0 : N+1]
	Bs := inputs[N+1:]

	var killCount int
	for i, v := range Bs {
		if v > As[i] {

			killCount += As[i]
			cap := v - As[i]

			if As[i+1] < cap {
				killCount += As[i+1]
			} else {
				killCount += cap
			}

			if As[i+1]-(v-As[i]) < 0 {
				As[i+1] = 0
			} else {
				As[i+1] = As[i+1] - (v - As[i])
			}
		} else {
			killCount += v
		}
	}
	fmt.Println(killCount)
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
