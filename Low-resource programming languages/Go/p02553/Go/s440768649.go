package main

import (
	"fmt"
	"math"
	"strconv"
)


func main() {
	var a,b,c,d float64
	fmt.Scan(&a,&b,&c,&d)


	max := math.Max(math.Max(a * c ,a * d) ,math.Max(b * c ,b * d))
	fmt.Println(strconv.FormatFloat(max, 'G', 4, 64)) 
	return
}


func Max(nums ...int64) int64 {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int64(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
