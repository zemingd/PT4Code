package main

import (
	"fmt"
	"math"
	"strconv"
)


func main() {
	var a,b,c,d float64
	fmt.Scan(&a,&b,&c,&d)

	max := math.Max(a * c ,a * d)
	max =  math.Max(max,b * c)
	max =  math.Max(max,b * d)

	fmt.Printf(strconv.FormatFloat(max, 'f', -1, 64)) // "1234.5678"
	// fmt.Println(max)
	return
}


func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("funciton max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}
