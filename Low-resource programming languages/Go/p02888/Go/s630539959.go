package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)

	inputs := scanNums(N)
	sort.Sort(sort.Reverse(sort.IntSlice(inputs)))
	fmt.Println(inputs)
	res := 0
	for i := 0; i < N; i++ {
		for j := i + 1; j < N; j++ {
			if inputs[i] >= 2*inputs[j] {
				break
			}
			for k := j + 1; k < N; k++ {

				a := inputs[i]
				b := inputs[j]
				c := inputs[k]
				if a >= b+c {
					break
				}
				// if a >= b+c {
				// 	continue
				// }
				// if b >= a+c {
				// 	continue
				// }
				// if c >= a+b {
				// 	continue
				// }
				res++
			}
		}
	}

	fmt.Println(res)

}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
