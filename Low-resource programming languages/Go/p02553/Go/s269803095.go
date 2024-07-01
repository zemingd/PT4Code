package main

import (
	"fmt"
	"math"
)


func main() {
	var a,b,c,d int
	fmt.Scan(&a,&b,&c,&d)


	max := max(a * c ,a * d ,b * c ,b * d)

	fmt.Println(max)
	return



}


func max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
