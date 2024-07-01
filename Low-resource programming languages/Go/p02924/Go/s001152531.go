package main

import (
	"fmt"
)

func main() {
	var a int
	fmt.Scan(&a)
	// nums := createArray(a)
	// fmt.Println(nums)
	// point := N
	// for i:= len(nums) -1; i <0; i-- {
	// if nums[i]
	// }
	// newNums := []int{}
	// if a%2 == 0 {
	// 	newNums = nums[a/2:]
	// } else {
	// 	newNums = nums[(a+1)/2:]
	// }

	res := a * (a - 1) / 2
	fmt.Println(res)

}

func createArray(a int) (res []int) {
	for i := 0; i < a; i++ {
		res = append(res, i+1)
	}
	return
}
